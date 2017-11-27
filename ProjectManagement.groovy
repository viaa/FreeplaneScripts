// ####################################################################################################
// # Notes
// ####################################################################################################
    // Make sure all attributes in the map are valid sql column names. They should not start with a number or a special char for example. 
    // Use autohotkey win+` to open links to nodes from the database
    // To avoid having the tables displayed in notes tooltips, uncheck: Tools > Preferences > Behavior > Tooltips > Display tool tips

// ####################################################################################################
// # Todo
// ####################################################################################################

    // = 1
        // - F
            // s0 use node.map.file.name to get the filename?
            // s0 For the nodes that have the project icon, put the default attributes for projects tasks.
            // s0 For some queries it could be useful to list them in the node's note, so add an attribute to choose for that, like for example to list the tables.
            // s0 If a node has the sql query attribute but doesn't have the icon, add the icon: this can happen if I add the attributes and forget the icon
            // s0 Check why mapName is empty when showing results.... i want to add the path to the note
            // s-1 Use the elvis operator if needed: freeplaneLink = n.link.text ?: '' // Set to empty string if null
            // s0 See many additions to implement on my mobile todo map 
            // s2 Put timestamps in the script to know why it takes so many time when I import all nodes. Check which part takes time. 
                // Seems to be the inserts that take a lot of time
            // s2 Get the queries from the previous database (projectmanagement).
            // s2 Remove file"// from link.
        // - M
            // s0 Put the styles according to project attributes using this script and not via the conditional settings, for simplicity. Add nice icons for progress, complete etc. 
            // s1 Add function to return a result set 
            // s1 And then a function to make a html table from the resultset
            // s2 Do a function that creates a html table from a view, then create a structure of nodes place in order of importance with proper labeling that will contain a table in their note, this will be used for viewing. One of these note will be the AllProjects table, and another will be the current map, then I could put some other nodes with stats or other stuff. No need to open this in the browser because I could "browse tabs" using the nodes and destroy or copy the nodes. 
                // s1 Maybe create a csv file for each table and have them linked, so they can be opened for further analysis or view in excel?
            // s1 Do some correspondances between SF data retrieved and the project attributes, like for example the percent completed could be defined using the milesstones, if monitoring then 90%, if new case 0% etc. Or case status and the status Important Very important of the project attributes.
                // s2 Fix the dates, the format changes when set from the case data
            // s2 Do a table that will select all the project (todolist) attributes/fields from imported tables and put then in this big table, then the queries will be made on that big table and not on the individual map tables. And add also the name of the map as a field.
            // s2 Maybe import all nodes (this will be useful for caselist also).
                // s2 Add a field 'HasAttributes' to indicate if the node imported contained attributes or no. Put it as the last node of the basic columns, before the attribute columns.
                // s2 Add a bool variable to tell the script to add only nodes with attributes or all nodes even without attributes.
            // s2 Add a link 'ImageLink' to inserted image in the node (I have code to get the image link).
        // - L
            // s-1 Continue to test resultSetToTableModel() in projectlist
    // = 2
        // - F
            // s2 See how to include a script in another. See log.mm on 2017-08-28
        // - M
            // s2 Fix the table borders...?
        // - L
            // s2 Add the relations between nodes, maybe this would require a tables containing the relations?
            // s-1 I could update back the nodes by looping db rows and for each nodeid to update the info...
                // s-1 I could also update from csv, by loading it to rList the to db and back to updating nodes by nodeid. It could be useful to update them in excel.
    // = 3
        // - F
            // s0 Add flags to choose to export to csv, or sqlite, etc.
        // - M
            // s-1 Maybe export the full core text, node and details as files in a global 'html' subdir with the nodeid as a filename _coretext.html, _details.html, _node.html. And link them in the table with the dbpath/html/ and the filename.
            // s-1 Try to send data to a jtable.
            // s-1 Try to send data to the jfreegant chart using the samples I have in test.groovy.
            // s0 Maybe sort the project nodes attributes in the nodes?
        // - L
            // s0 Maybe add possibility to edit html tables generated in node details?
            // s0 Put to function the html code? So I could get query results and display as html in the map?
                // s0 Create some tables in nodes (details or notes) from the views in the database.
    // = Unsorted

// ####################################################################################################
// # Global
// #################################################################################################### 

    // ====================================================================================================
    // = Global: Imports 
    // ====================================================================================================

        // To use global Constants (the other option is just to remove '@Field def', not defining the variable will make it "global".
            import groovy.transform.Field
        // SimpleDateFormat
            import java.text.*
        // SQLite
            import org.sqlite.*
        // JavaSql
            // NOTE: Copy sqlite-jdbc-3.18.0.jar to C:\Users\%USERNAME%\AppData\Roaming\Freeplane\1.5.x\lib and in the Freeplane Preferences in the Plugins tab, add that path to the "Script classpath: Additional directories containing classes and/or JARs (see tooltip)" field. Restart Freeplane after that so it will load the libraries to be used by Groovy.
            //import java.sql.* // DON'T USE THIS AS IT CONFLICS WITH java.util.Date(), it contains a Date() object also.
            import java.sql.Connection
            import java.sql.Statement
            //import java.sql.DriverManager
            import java.sql.PreparedStatement
            import java.sql.ResultSet
            import java.sql.ResultSetMetaData
            //import java.sql.SQLException
        // To get path of file names
            import org.apache.commons.io.FilenameUtils

    // ====================================================================================================
    // = Global: Declarations and Initialization
    // ====================================================================================================

        // - Constants
            // · Global (available in functions)
                @Field def DEBUG = false
                @Field def DEBUG_FILE_PATH = "c:/temp/debug.txt"

                // Database location
                    @Field def DB_DIR = 'd:/Work/MindMaps/Database/' // Add trailing slash (/)
                    @Field def DB_URL = 'jdbc:sqlite:d://Work/MindMaps/Database/MindMaps.sqlite'

                @Field def EOL = '\r\n' // End of line (after each rows) separator for the CSV file

        // - Variables
            // · Global (available in functions)
                @Field def SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-yy hh:mm:ss")
                @Field def mapName = ''

    // ====================================================================================================
    // = Global: Functions
    // ====================================================================================================

        // ----------------------------------------------------------------------------------------------------
        // - Utility functions
        // ----------------------------------------------------------------------------------------------------
        
            // ····································································································
            def m(message) // ·
            // ····································································································
            { javax.swing.JOptionPane.showMessageDialog(null, message) }
            
            // ····································································································
             def d(message) // ·
            // ····································································································
            {
                if (DEBUG) {
                    BufferedWriter bw = new BufferedWriter(new FileWriter(DEBUG_FILE_PATH, true));
                    Date date = new Date();
                    bw.write(df.format(date) + ' ' + message);
                    bw.newLine();
                    bw.flush();
                    bw.close();
                }
            }

// ####################################################################################################
// # ModuleMapToDB
// #################################################################################################### 

    // ====================================================================================================
    // = ModuleMapToDB: Global Declarations
    // ==================================================================================================== 

        // - Constants
            @Field def IEOL = '~' // Internal EOL character to avoid putting a real EOL in CSV file for example.

    // ====================================================================================================
    // = ModuleMapToDB: Global Functions
    // ==================================================================================================== 

        // ----------------------------------------------------------------------------------------------------
        // - Text functions
        // ----------------------------------------------------------------------------------------------------

            // ····································································································
            def truncateField(pStr, pSize) // ·
            // ····································································································
            {
                def text = ''
                if (pStr.length() > pSize) // If that text is longer than the max length of text allowed
                    text = pStr.substring(0, pSize - 1) + '...'
                else
                    text = pStr
                return text.replaceAll("'", "''") // Double the apostrophes so there is no issue inserting the strings in the database
            }

            // ····································································································
            def formatLink(pLink) // ·
            // ····································································································
            {
                def link = pLink
                link = link.replace('file:/', '')
                link = link.replaceAll('/', '\\\\')
                link = link.replaceAll('%20', ' ')
                return link
            }

            // ····································································································
            def ignoreNode(pNode) { // · Add the ability to ignore the nodes that are found under a node with
            // ···································································································· 
                pNode.pathToRoot.any { 
                    // the core text 'OLD', 'IGNORE', 'BAK'
                        it.text == 'IGNORE' || it.text == 'OLD' || it.text == 'BAK' || 
                    // or under nodes that have the icons 'button_cancel' or 'closed' 
                        //it.icons.collect{it.toString()}.join(';') =~ '(^|;)(button_cancel|closed)' || 
                        it.icons.collect{it.toString()}.join(';') =~ '(^|;)(closed)'
                    } 
            }

        // ----------------------------------------------------------------------------------------------------
        // - Html functions
        // ----------------------------------------------------------------------------------------------------

            // ····································································································
            def sqlToHtmlTable(sql) // · Builds a html table from a sql query
            // ····································································································
            {
                // Get the result set
                    ResultSet resultSet = null
                    try {
                        SQLiteDataSource dataSource = new SQLiteDataSource()
                        dataSource.setUrl(DB_URL)
                        connection = dataSource.getConnection()
                        PreparedStatement preparedStatement = connection.prepareStatement(sql)
                        resultSet = preparedStatement.executeQuery()
                    }
                    catch (Exception ex) { 
                        m('Error executing the query (' + sql + '), check that it is valid: ' + ex.toString())
                        d('[E] ' + ex.toString());
                        d('[E] ' + ex.getMessage());
                        d('[E] ' + ex.getStackTrace());  
                        return
                    }
                // Get result set metadata
                    final ResultSetMetaData metaData = resultSet.getMetaData()
                    final int columnCount = metaData.getColumnCount()
                // Build the table from using the metadata and data from the result set
                    String table = '<table>' + EOL
                    // Add headers
                        String header = '<tr>'
                        for (int i = 1; i <= columnCount; i++ ) {
                            String colName = resultSet.getColumnName(i)
                            header += '<th>' + colName + '</th>' 
                        }
                        header += '</tr>' + EOL
                    // Add values
                        String rows = ''
                        while (resultSet.next())
                        {
                            rows += '<tr>'
                            for (final int column = 1; column <= columnCount; ++column) 
                            {
                                final Object value = resultSet.getObject(column)
                                String rowValue = ''
                                if (value != null) {
                                    value = value.replaceAll(IEOL, '<br>')
                                    rowValue = String.valueOf(value)
                                }
                                rows += '<td>' + rowValue + '</td>'
                            }
                            rows += '</tr>' + EOL
                        }
                    table += header + rows + '</table>'
                    return table
            }

            // ····································································································
            def htmlTableToFileWithStyle(title, table, path) // · Will write a html table to a file adding style
            // ···································································································· 
            {
                def html = '<html>' + EOL
                // Head
                    html += '<HEAD>' + EOL
                        html += '<META http-equiv="Content-Type" content="text/html; charset=utf-8">' + EOL
                            // Styles
                                html += '<STYLE>td { border: 1px solid #9CC2E5; font-family: calibri; font-size: 10px; vertical-align: top }' + EOL
                                    html += 'table { border-collapse: collapse; }' + EOL
                                    html += 'table th { background-color:#5B9BD5; font-family: calibri; font-size: 10px; }' + EOL
                                    html += 'tr:nth-child(2n){ background-color:#DEEAF6; }' + EOL
                                    html += 'body { font-family: calibri; font-size: 10px; }' + EOL
                                html += '</STYLE>' + EOL
                                html += '<STYLE type="text/css" media="print">' + EOL
                                    html += '@page { size: A4 landscape; prince-shrink-to-fit: auto; }' + EOL
                                html += '</STYLE>' + EOL
                        html += '</HEAD>' + EOL
                // Body
                    html += '<body>' + EOL
                    html += '<p>' + title + '</p>' + EOL
                    html += table + EOL
                    html += '</body></html>'
                // Write the file
                    def htmlFile = new File(path)
                    htmlFile.write(html, 'utf-8')
            }

    // ====================================================================================================
    def ModuleMapToDB() // = Module that inserts the map's node to its own table in the database, and add these nodes also to a global table common to all maps. It generates also a CSV file of the current map table in the database path for viewing in Excel.
    // ==================================================================================================== 
    {
        // ----------------------------------------------------------------------------------------------------
        // - Local Declaration and Initialization
        // ---------------------------------------------------------------------------------------------------- 

            // · Constants
                def IMPORT_ONLY_NODES_WITH_ATTRIBUTES = true

                def SHORT_TEXT_MAX_SIZE = 25 // Number of chars to display in the ShortText field
                def SHORT_DETAILS_MAX_SIZE = 50 // Number of chars to display in the ShortDetails field
                def SHORT_NOTE_MAX_SIZE = 100 // Number of chars to display in the ShortNote field

                def SEP = 'ð' // Internal separator character between the columns (for rList). Other possible separator in case the one selected exist in the core text: § ¬ þ ð ¸ ˝

                def CSV_SEP = ';' // Separator character that will used in the exported CSV file

                def PROJECT_ICON = 'mindmap' // The icon used to identify the nodes that are projects, for the nodes that have this icon the script will add the project attributes missing automatically with default values. 

            // · Variables
                def HashMap<String, String> vList = new HashMap<String, String>(); // Used to keep all the values retrieved from attributes. s0 Check if there is a short way of defining this.
                def bList = [] // List to contain the basic node attributes
                def xList = [] // List to contain the attributes projects in the node
                def aList = [] // List to contain all the attributes
                def rowNum = 0 // Each node is a table row, it is used to identify the values, to know on which rows they are

            // · Initialisation

                // · List to contain the basic node attributes
                    bList.add('Icons')
                    bList.add('ShortText')
                    bList.add('ShortNote')
                    bList.add('ShortDetails')
                    bList.add('NodeDepth')
                    bList.add('PathToNode')
                    bList.add('DateCreated')
                    bList.add('DateModified')
                    bList.add('NodeId')
                    bList.add('MapName')
                    bList.add('LinkToNode')
                    bList.add('Link')
                    bList.add('ImageLink')
                    bList.add('ConnectorsIn')
                    bList.add('NbConnectorsIn')
                    bList.add('ConnectorsOut')
                    bList.add('NbConnectorsOut')
                    bList.add('Connectors') // All connectors (In + Out)
                    bList.add('NbConnectors')
                    bList.add('HasAttributes')

                // · List to contain the projects attribute in the node
                    xList.add('TaskAllocatedBy')
                    xList.add('TaskColor')
                    xList.add('TaskCost')
                    xList.add('TaskCreatedBy')
                    xList.add('TaskDoneDate')
                    xList.add('TaskDueDate')
                    xList.add('TaskExternalID')
                    xList.add('TaskFileReferencePath')
                    xList.add('TaskFlag')
                    xList.add('TaskID')
                    xList.add('TaskPercentDone')
                    xList.add('TaskPosition')
                    xList.add('TaskPriority')
                    xList.add('TaskRisk')
                    xList.add('TaskStartDate')
                    xList.add('TaskStatus')
                    xList.add('TaskTimeEstimate')
                    xList.add('TaskTimeEstUnits')
                    xList.add('TaskTimeSpent')
                    xList.add('TaskTimeSpentUnits')
                    xList.add('TaskVersion')
                    xList.add('TaskCategories')
                    xList.add('TaskTags')

                // List to contain all the attributes
                    aList = bList + xList

                // To get links to the nodes and map name
                    URI mapUri = null
                    try {
                        mapUri = map.file.absoluteFile.toURI()
                        mapName = FilenameUtils.getBaseName(mapUri.path) // Get the map name with the folder and the extension
                    } catch (Exception e) { 
                        m('Error: Please make sure the file is saved to disk. ')
                        return
                    }

        // ----------------------------------------------------------------------------------------------------
        d('Add missing project attributes to the nodes with the project icon') // -
        // ----------------------------------------------------------------------------------------------------
            c.findAll().each { n ->

                if (ignoreNode(n)) // Ignore the nodes that are under a specific node (see function declaration)
                    return

                if (n.icons.collect{it.toString()}.join(';') =~ '(^|;|/)(' + PROJECT_ICON + ')') { // Nodes that contain the project icon
                    // Loop the attributes of xList (the project attributes) and add them if they are not found in the nodes attributes
                        xList.each { x ->
                            if (!n.attributes.containsKey(x)) {
                                // s0 For now add empty attributes but I should add default values, so put a if or switch with the name of the attributes and add specific default values according to the attributes.
                                n.attributes.add([x, ''])
                            }
                        }
                }
            }

        // ----------------------------------------------------------------------------------------------------
        d('Get the attribute data to lists') // -
        // ----------------------------------------------------------------------------------------------------
            // There are two main lists: 
                // vList which contains the values of the attributes
                // bList with contains the attributes/columns names
            // This will go through all nodes and for each will loop each attributes and put their data to a big list identified by rowNumber_attributeName, and it will build a list of all the attributeNames it finds along the way.
            c.findAll().each { n ->

                if (ignoreNode(n)) // Ignore the nodes that are under a specific node (see function declaration)
                    return

                if (IMPORT_ONLY_NODES_WITH_ATTRIBUTES) { // Importing only nodes with attributes
                    if (n.attributes.size() == 0) // Check if there are actually attributes in the node. If no then go to next node (return). 
                        return
                }

                // Get basic node information
                    // · Icons
                        if (n.icons.size() > 0)
                            vList[rowNum + '-Icons'] = n.icons.collect{it.toString()}.join(';')
                    // · ShortText
                        if (n.text != null)
                            vList[rowNum + '-ShortText'] = truncateField(n.plainText, SHORT_TEXT_MAX_SIZE)
                    // · ShortDetails
                        if (n.details != null)
                            vList[rowNum + '-ShortDetails'] = truncateField(n.details, SHORT_DETAILS_MAX_SIZE)
                    // · ShortNote
                        if (n.note != null)
                            vList[rowNum + '-ShortNote'] = truncateField(n.note, SHORT_NOTE_MAX_SIZE)
                    // · NodeDepth
                        vList[rowNum + '-NodeDepth'] = n.getNodeLevel(false) + 1 // Level 1 is the root node
                    // · PathToNode
                        pathToNode = ''
                        n.pathToRoot.each { pathToNode += '/' + truncateField(it.plainText, SHORT_TEXT_MAX_SIZE) }
                        vList[rowNum + '-PathToNode'] = pathToNode
                    // · DateCreated
                        vList[rowNum + '-DateCreated'] = df.format(n.createdAt)
                    // · Date Modified
                        vList[rowNum + '-DateModified'] = df.format(n.lastModifiedAt)
                    // · NodeId
                        vList[rowNum + '-NodeId'] = n.id
                    // · Map name
                        vList[rowNum + '-MapName'] = mapName
                    // · Link to this node
                        vList[rowNum + '-LinkToNode'] = 'file:' + mapUri.path + '#' + n.id
                    // · Link to an external resource
                        if (n.link.text != null)
                            vList[rowNum + '-Link'] = formatLink(n.link.text)
                        else
                            vList[rowNum + '-Link'] = ''
                    // · ImageLink
                        if (n.externalObject.uri != null)
                            vList[rowNum + '-ImageLink'] = formatLink(n.externalObject.uri)
                    // · Connectors
                        // · In
                            def connectorsInList = ''
                            def nbConnectorsIn = 0
                            n.connectorsIn.each {
                                // Connector labels
                                    def sLabel = ''
                                    def mLabel = ''
                                    def tLabel = ''
                                    if (it.sourceLabel != null)
                                        sLabel = '[' + it.sourceLabel + ']'
                                    if (it.middleLabel != null)
                                        mLabel = '[' + it.middleLabel + ']---'
                                    if (it.targetLabel != null)
                                        tLabel = '[' + it.targetLabel + ']'
                                // Get the full path of the connected node
                                    pathToNode = ''
                                    it.source.pathToRoot.each { it2 -> pathToNode += '/' + truncateField(it2.plainText, SHORT_TEXT_MAX_SIZE) }
                                // Add the connector to the text list
                                    connectorsInList += '- This node' + tLabel + '(---' + mLabel + sLabel + it.source.plainText + '{' + pathToNode + ', ' + it.source.id + '}' + IEOL
                                    nbConnectorsIn++
                            }
                            vList[rowNum + '-ConnectorsIn'] = connectorsInList
                            vList[rowNum + '-NbConnectorsIn'] = nbConnectorsIn
                        // · Out
                            def connectorsOutList = ''
                            def nbConnectorsOut = 0
                            n.connectorsOut.each {
                                // Connector labels
                                    def sLabel = ''
                                    def mLabel = ''
                                    def tLabel = ''
                                    if (it.sourceLabel != null)
                                        sLabel = '[' + it.sourceLabel + ']'
                                    if (it.middleLabel != null)
                                        mLabel = '---[' + it.middleLabel + ']'
                                    if (it.targetLabel != null)
                                        tLabel = '[' + it.targetLabel + ']'
                                // Get the full path of the connected node
                                    pathToNode = ''
                                    it.target.pathToRoot.each { it2 -> pathToNode += '/' + truncateField(it2.plainText, SHORT_TEXT_MAX_SIZE) }
                                // Add the connector to the text list
                                    connectorsOutList += '- This node' + sLabel + mLabel+ '---)'  + tLabel + it.target.plainText + '{' + pathToNode + ', ' + it.target.id + '}' + IEOL
                                    nbConnectorsOut++
                            }
                            vList[rowNum + '-ConnectorsOut'] = connectorsOutList
                            vList[rowNum + '-NbConnectorsOut'] = nbConnectorsOut
                        // · All
                            vList[rowNum + '-Connectors'] = connectorsInList + connectorsOutList
                            vList[rowNum + '-NbConnectors'] = nbConnectorsIn + nbConnectorsOut
                    // · HasAttributes
                        if (IMPORT_ONLY_NODES_WITH_ATTRIBUTES || n.attributes.size() > 0) // If we import all the nodes even those without attributes
                            vList[rowNum + '-HasAttributes'] = '1'
                        else
                            vList[rowNum + '-HasAttributes'] = '0'
                // Loop all the attributes of the current node, and add them as columns with their value
                    n.attributes.each {
                        // Add the value to the row_column-value list
                            def value = it.value
                            // If the value is a date, format it to yyyy-mm-dd HH:mm:ss
                                if (value != '' && (it.key == 'TaskStartDate' || it.key == 'TaskDoneDate' || it.key == 'TaskDueDate'))
                                    value = format(value, "yyyy-MM-dd HH:mm:ss").toString()
                        // Replace some keys that could be reserved SQL names, so that they don't generate an error when added to the create table statement
                            def keyTmp = it.key
                            if (keyTmp == 'index')
                                keyTmp = keyTmp.replace('index', 'index_')
                        // Add the value to the list at this positioned identified with row_column
                            vList[rowNum + '-' + keyTmp] = value
                            //vList[rowNum + '_' + it.key] = value
                        // Check if the column name (attribute name) exists already, if not add it
                            if (bList.find { element -> element == keyTmp } == null)
                                bList.add(keyTmp)
                        }
                rowNum++ // Next node would be the next table row
                }
                
            // Test VList 
                /* vList.each { k, v -> */
                /*     m(k + ' =  ' + v) */
                /* } */

        // ----------------------------------------------------------------------------------------------------
        d('Put attributes to row list') // -
        // ----------------------------------------------------------------------------------------------------
        // Creates a array containing csv data (strings) from bList and vList, so add the attribute data to a list with rows as strings with columns separated by a character.
            def List<String> rList = new ArrayList<String>() // List to contain all the rows of the final table 
            def vId // To identify the value in the list of values, it is composed of row_column/attributeName
            // Add the column names
                row = '' // Temporary row before to add it to the table
                for (c in bList)
                    row += c + SEP
                rList.add(row.replaceAll(SEP + '$', '')) // This column row is added with the data as the first line because in case it is exported as CSV, just to skip first like if it is not needed.
            // Add the values
                for (int r in 0..rowNum - 1) { // Loop all rows
                    row = '' // Temporary row before to add it to the table
                    for (c in bList) { // Loop all the possible columns found
                        vId = r + '-' + c // Compose a value id from the row and col, but it may not exist 
                        // Check if the value id exist, if yes then get it
                            value = 'N/A' // Initialize the value as not available, then if it is available it will be replaced by its value
                            if (vList.containsKey(vId))
                                value = vList[vId].toString() // s0 There is an errors here trying task start date
                        // Add the column to the current temporary row
                            row += value + SEP
                        }
                        rList.add(row.replaceAll(SEP + '$', ''))
                    }

            // Test rList
                /* for (r in rList) */
                /*     m(r) */

        // ----------------------------------------------------------------------------------------------------
        d('Save row list to CSV file') // -
        // ----------------------------------------------------------------------------------------------------
            def csvFile = new File(DB_DIR + mapName + '.csv')
            csvFile.write(rList.join(EOL).replaceAll(SEP, CSV_SEP), 'utf-8')
       
        // ----------------------------------------------------------------------------------------------------
        d('Insert data to the database') // -
        // ----------------------------------------------------------------------------------------------------
            try {

                // ····································································································
                d('Initialize the database') // ·
                // ····································································································
                    SQLiteDataSource dataSource = new SQLiteDataSource()
                    dataSource.setUrl(DB_URL)
                    connection = dataSource.getConnection()
                    connection.setAutoCommit(false) // Very slow if not set to false
                    Statement statement = connection.createStatement()

                // ····································································································
                d('Insert the map attributes to the map table') // ·
                // ····································································································
                    // Drop the map table (because the structure changes each times attributes are added or removed)
                        statement.execute('DROP TABLE IF EXISTS [' + mapName + '];')
                        d('DROP TABLE IF EXISTS [' + mapName + ']')
                        // Build the create table statement and the first part of the insert statement 
                            def createTable = 'CREATE TABLE [' + mapName + '] (' + EOL
                            for (c in bList)
                                createTable += c + ' TEXT,' + EOL
                            createTable = createTable.replaceAll(',$', ');')
                            // Create the map table
                                statement.execute(createTable)
                    // Build the insert statement
                        def insertIntoPart1 = 'INSERT INTO [' + mapName + '] (' + rList[0].replaceAll(SEP, ',') + ') VALUES (' // Add the columns list to insert statement
                        // Second part of the insert statement
                            i = 0
                            rList.each {
                                if (i == 0) { // Skip the columns line (there should be a better way of doing this)
                                    i++
                                    return
                                }
                                insertInto = insertIntoPart1 + "'" + it.replaceAll(SEP, "','") + "');" // Close the insert statement, add the VALUES and their quotes
                                d(insertInto)
                                statement.addBatch(insertInto)
                            }
                            statement.executeBatch()
                // ····································································································
                d('Insert the data from the project columns to the AllProjects table') // ·
                // ····································································································
                    // Create the common project table (if it doesn't exist already) for all maps (this table contains all the project attributes found in all other tables
                        createTable = 'CREATE TABLE IF NOT EXISTS AllProjects (' + EOL
                            for (c in aList)
                                createTable += c + ' TEXT,' + EOL
                            createTable = createTable.replaceAll(',$', ');')
                            //d(createTable)
                            // Create the table
                                statement.execute(createTable)
                    // Find the project columns that are found in the map table to create a select statement to select that data and insert it in the AllProjects table
                        def fList = []
                        bList.each { v ->  // Loop all the columns of the map table, if any of these are found in the AllProjects columns then add them to the fList
                            fv = aList.find { it == v }
                            if (fv != null)
                                fList.add(fv)
                        }
                        statement.execute("DELETE FROM AllProjects WHERE MapName = '" + mapName + "'")
                        def insertInto = 'INSERT INTO AllProjects (' + fList.join(',') + ') SELECT ' + fList.join(',') + ' FROM [' + mapName + ']'
                        d(insertInto)
                        statement.execute(insertInto)
                // Save the modifications to the database
                    connection.commit()
            }
            catch (Exception ex) { 
                // Don't save modifications to the database 
                    d('[E] Rollback')
                    connection.rollback() 
                d('[E] ' + ex.toString());
                d('[E] ' + ex.getMessage());
                d('[E] ' + ex.getStackTrace());  
            }
            finally {
                // ····································································································
                d('Close the connection') // ·
                // ····································································································
                    if (connection != null)
                        connection.close()
            }
    }


// ####################################################################################################
// # ModuleSqlNode
// #################################################################################################### 

    // ====================================================================================================
    // = ModuleSqlNode: Global Declarations 
    // ==================================================================================================== 

        // - Constants
            @Field def SQL_QUERY_ICON = '3-Columns' // The icon used to identify the nodes that are sql queries, for the nodes that have this icon the script will add some default settings if missing.

    // ====================================================================================================
    // = ModuleSqlNode: Global Functions 
    // ==================================================================================================== 

        // ----------------------------------------------------------------------------------------------------
        def IsSqlQueryNode(pNode) // - Check if the node passed in parameter is a sql query node 
        // ---------------------------------------------------------------------------------------------------- 
        {
            if (pNode.icons.collect{it.toString()}.join(';') =~ '(^|;|/)(' + SQL_QUERY_ICON + ')')
                return true
            else
                return false
        }
            
    // ====================================================================================================
    def ModuleSqlNode() // = Module that executes the SQL queries found in specific SQL nodes and return results as html table in sub nodes of the SQL node 
    // ==================================================================================================== 
    {
        // ----------------------------------------------------------------------------------------------------
        // - Local Declaration and Initialization
        // ---------------------------------------------------------------------------------------------------- 

            // · Constants

            // · Variables
                def sList = [] // List to contain the attributes projects in the node

            // - Initialisation

                // · List to contain the sql query attributes in the sql nodes
                    sList.add('CurrentSqlQuery')
                    sList.add('PreviousSqlQuery')
                    sList.add('ImagesAsLinks')

        // ----------------------------------------------------------------------------------------------------
        d('Add missing sql node attributes to the sql query nodes (with the sql query icon)') // -
        // ----------------------------------------------------------------------------------------------------
            c.findAll().each { n ->
                if (IsSqlQueryNode(n)) { // Nodes that contain the sql query icon
                    // Loop the attributes of sList (the sql query attributes) and add them if they are not found in the nodes attributes
                        sList.each { s ->
                            if (!n.attributes.containsKey(s)) {
                                // s0 For now add empty attributes but I should add default values, so put a if or switch with the name of the attributes and add specific default values according to the attributes.
                                n.attributes.add([s, ''])
                            }
                        }
                }
            }

        // ----------------------------------------------------------------------------------------------------
        // - If current node is not a sql query node then exit
        // ---------------------------------------------------------------------------------------------------- 
            if (!IsSqlQueryNode(node))
                return

        // ----------------------------------------------------------------------------------------------------
        d("Execute the current's sql node query and return the results") // -
        // ----------------------------------------------------------------------------------------------------
            // s0 Compare if the current query is equal to the previous then do nothing 

            // Add the link to the CSV file
                //link.text = 'file://' + DB_DIR + mapName + '.csv'
            // Add the html table to the node
                link.text = '' // Remove the link to a html file because the file is not yet created
                def sqlQuery = attributes['CurrentSqlQuery']
                d(sqlQuery)
                def htmlTable = sqlToHtmlTable(sqlQuery)
                // Write the html string to a file
                    htmlFilePath = DB_DIR + truncateField(plainText, 50) + '.html'
                    htmlFilePath = htmlFilePath.replaceAll(' ', '_')
                    htmlTableToFileWithStyle(plainText, htmlTable, htmlFilePath)
                    // Add the link to the HTML file
                        link.text = 'file://' + htmlFilePath

                // s0 Set the previous sql query with the current query value
    }

// ####################################################################################################
// # Main
// ####################################################################################################

ModuleMapToDB() 
ModuleSqlNode() 
