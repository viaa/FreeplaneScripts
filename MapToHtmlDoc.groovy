// @ExecutionModes({ON_SELECTED_NODE})

// ####################################################################################################
// # Version History:
// #################################################################################################### 
        // Version 2017-11-10_11.54.25
            // Bug fix: it.value.toLOwerCase()=='NOEXPORT' to it.value.toLowerCase()=='NOEXPORT'
        // Version 2017-11-09_11.27.13 
            // I modified the link formats for the connector and the breadcrumbs previous and next.
        // Version 2017-11-09_00.48.00 
            // I added the previous << and next >> links to the breadcrumbs to jump to the next section of the same level.
        // Version 2017-11-08_20.35.37
            // Fixed/Improved the connectors: Now if the source and target nodes are in a IGNORE section/path, then their links will not be created.
        // Version 2017-11-08_20.10.56
            // I fixed the rawNote() function, it now keeps the indentation of files and remove empty lines and spaces. 
        // Version 2017-11-08_13.20.22
            // Added the breadcrumb feature (clickable fullpath parts in sections H2, H3 and optionaly H4 to jump back to previous sections).
        // Version 2017-11-08_11.59.59
            // Corrected a small bug that showed 'null' in the connector middle label.
        // Version 2017-11-08_11.49.13
            // Added the possibility to ignore connectors sections/nodes by added 'IGNORE' in the label.
        // Version 2017-11-08_01.02.06
            // Added connectors support. The connectors will be show as links with optional details of the connections (source, target, labels, path).
        // Version 2017-11-02_15.04.12
            // Added 'file://' to the img tag paths.
        // Version 2017-11-02_11.11.06
            // Added the copy of the output html document to a document with the name of the map. This will allow to export multiple documents and link them together.
        // Version 2017-10-25_01.08.34 
            // Added basic support for Latex formulas in core text.
        // Version: 2017-10-23_19.41.21
            // Added support for formulas in attributes.
            // Modified the icons so that icons with a null path will not add an image tag with null as the path.
        // Version: 2017-10-17_20.51.53
            // Remove a <br> after the link back to the table of contact.
            // Added support for formulas (in the core text only, not in attributes).
        // Version: 2017-10-16_11.23.21
            // Added partial icons support. Some icons available in Freeplanes are not found in the icons directory and subdirectories so these will not be displayed at the moment but most seems be work.
        // Version: 2017-10-15_16.32.21
            // Added the possibility of changing node levels by adding a specific icon with a number to the node.
        // Version: 2017-10-14_16.25.57
            // Will create debug directory and html output directory if they don't exists.
        // Version: 2017-10-12_00.44.39
            // I removed 1 <br> after the details, there was too much spacing. 
        // Version: 2017-10-11_22.57.48
            // Added constant to configure more easily the output path, and also for the temp file if used. And I added a message box to indicate where the file is saved even if the string is used to hold the html document. 
        // Version: 2017-10-11_13.17.34
            // Added the constant LARGE_MAP_USE_FILE. If it is set to false, the script will use the memory to hold the html document (much faster). If it is set to true, the script will use a file to hold the document (much slower), this allows to generate html documents from large maps.
        // Version: 2017-10-11_12.52.50
            // Added a message box to notify the user that the html document is completed, because it is slower since using a file. 
        // Version: 2017-10-10_17.48.30 
            // As requested, I added to possibility to generate the html doc from large maps by using a file instead of memory.
        // Version: 2017-10-04_14.26.19 
            // As suggested on the forum, I have modified the script to be able to run it on a branch, so now the doc can be generated from any node in a map, the selected node will be the root node and only its child nodes will appear in the document.
            // I have added boxes to the comments
        // Version: 2017-10-03_14.20.26
            // Modified the rawNote() function because their were leading chars on the lines and the text appeared indented.
        // Version: 2017-06-27_11.04.01
            // Added 2 constants to show/hide elements SHOW_TOC, SHOW_TITLE
        // Version: 2017-06-24_20.26.00
            // Added style to the details
            // Corrected a indentation issue where 'depth - 5', this is changed to 'depth - 4'
        // Version: 2017-06-15_19.23.56
            // Exclusion of nodes under a node with an attribute with the name 'Type' with the value 'Private' (For Quinbus' exclusion of nodes using an attribute name (https://sourceforge.net/p/freeplane/discussion/758437/thread/67f8576c/))
        // Version: 2017-06-13_09.48.21
            // Changes:
                // I removed 1 <br> after the images, there was too many spacing.
                // Added the exclusion of nodes under nodes with some specific icons
        // Version: 2017-06-12_14.38.23
            // Changes:
                // I added 1 <br> after the attributes so that there is the same spacing as with paragraph before the sections.
                // I added a check if a file exists before to insert it to the gray box, so that if it is moved it will not cause a script error and have the script to stop. It will tell in the gray box that the file xyz doesn't exist. 

        // To use global Constants (the other option is just to remove '@Field def', not defining the variable will make it "global".

// ####################################################################################################
// # Imports 
// ####################################################################################################
    // Used only for the debug function 
        import groovy.transform.Field
        // SimpleDateFormat
            import java.text.*
    // Imports for latex
        // BEGIN - LATEX (Comment out this section if jlatexmath-1.0.6.jar is not in C:\Users\%USERNAME%\AppData\Roaming\Freeplane\1.6.x\lib. See the demo map documentation for Latex usage)
            /* import java.awt.image.BufferedImage */ 
            /* import javax.imageio.ImageIO */
            /* import javax.swing.JLabel */
            /* import java.awt.Color */
            /* import org.scilab.forge.jlatexmath.TeXFormula */ 
            /* import org.scilab.forge.jlatexmath.TeXIcon */ 
            /* import org.scilab.forge.jlatexmath.TeXConstants */
        // END - LATEX

    // For file copy
        import org.apache.commons.io.FileUtils

// ####################################################################################################
// # Constants and variables
// #################################################################################################### 

    // ====================================================================================================
    // = Constants
    // ==================================================================================================== 

        // Global (with @Field available in functions)

            // Debug
                @Field def DEBUG = false 
                def DEBUG_DIR = 'c:/Temp/'
                @Field def DEBUG_FILE_PATH
                    DEBUG_FILE_PATH = DEBUG_DIR + 'debug.txt'

        // Constants to add/remove elements
            def SHOW_TOC = true
            def SHOW_TITLE = true

        def EOL = '\r\n'
        def TAB = 3 // Number of space in a "TAB"
        def TAB_CHR_SP = ' ' // The caracter used to indent in the source html 
        def TAB_CHR_NBSP = '&nbsp;' // The caracter used to indent as displayed on screen

        def LARGE_MAP_USE_FILE = false // If the map is large there may be memory issues, so set this to true so that the script will use a file instead of the memory. Note that it is much faster when this is set to false, so set it to false for small maps.

        def CHANGE_DEPTH_ICON = 'Dark-'

        // Html doc paths
            def OUT_DIR = 'c:/Temp/'
            def OUT_FILENAME = 'out.html'
            def OUT_TMP_FILENAME = 'outtmp.html'

        def USER_PATH = 'C:/Users/' + System.getenv("USERNAME") + '/AppData/Roaming/Freeplane/1.6.x/'
        def ICONS_PATH = USER_PATH + 'icons/'
        def LIB_PATH = USER_PATH + 'lib/' 

        // For connectors
            def SHORT_TEXT_MAX_SIZE = 25 // Number of chars to display in the ShortText field
            def SHOW_CONNECTOR_DETAILS = true

        // For breadcrumbs
            def ADD_H2_BREADCRUMBS = true
            def ADD_H3_BREADCRUMBS = true
            def ADD_H4_BREADCRUMBS = false

        // ----------------------------------------------------------------------------------------------------
        // - Styles
        // ---------------------------------------------------------------------------------------------------- 

            // ····································································································
            // · Separators
            // ···································································································· 
                def STYLE_SEP_COLOR = '#C3C3C3;'
                def SEP1 = '<hr align="left" style="border-top: 1px solid #000000; width:100%;">' // Separator for h1
                // SEP2
                    // def SEP2 = '<hr align="left" style="border-top: 3px double #8c8b8b;width:100%;">' // Separator for h2
                    def SEP2 = '<hr align="left" style="border-top: 3px double #0033FF; width:100%;">' // Separator for h2
                // SEP3 
                    //def SEP3 = '<hr align="left" style="border-top: 1px dashed #8c8b8b;width:100%;">' // Separator for h3
                    def SEP3 = '<hr align="left" style="border-top: 1px solid #00B439; width:100%;">' // Separator for h3
                // SEP4
                    def SEP4 = '' // Separator for h4
                    //def SEP4 = '<hr align="left" style="border-top: 1px dotted #990000;width:100%;">' // Separator for h4

            // ····································································································
            // · Fonts
            // ···································································································· 
                    // https://www.w3schools.com/cssref/css_websafe_fonts.asp
                    def FONT_MAIN = 'font-family: Arial, Helvetica, sans-serif;' 
                    def STYLE_H2 = 'color: #0033FF;'
                    def STYLE_H3 = 'color: #00B439;'
                    def STYLE_H4 = 'color: #990000;'

            // ····································································································
            // · Body
            // ···································································································· 
                def STYLE_BODY = FONT_MAIN + ' font-size: 12px;'

            // ····································································································
            // · Box (gray box for notes)
            // ···································································································· 
                def STYLE_BOX_PRE_WRAP = 'white-space: pre-wrap; white-space: -moz-pre-wrap; white-space: -pre-wrap; white-space: -o-pre-wrap; word-wrap: break-word;'
                def STYLE_BOX_PRE = 'font-family: \'Lucida Console\', Monaco, monospace; font-size: 9px; background-color: #F0F0F0; padding: 10px;' + STYLE_BOX_PRE_WRAP
                def S_BOX = '<pre style="' + STYLE_BOX_PRE + '">'
                def E_BOX = '</pre>' + EOL

        // ----------------------------------------------------------------------------------------------------
        // - Table of contents 
        // ---------------------------------------------------------------------------------------------------- 
            def STYLE_TOC = FONT_MAIN + ' font-size: 12px; padding: 10px;'
            def S_TOC = SEP1 + '<h2><a name="toc">Table of contents</a></h2><pre style="' + STYLE_TOC + '">' + EOL
            def E_TOC = '</pre>' + EOL
            def cptNode = 0
            def toc = ''
            def tocIndent
            // Link to return to the toc
                // def TOC_BACK_LINK = ''
                // if (SHOW_TOC)
                //     TOC_BACK_LINK = '<p><small><a href="#toc">[Table of contents]</a></small></p>' + EOL

        // Attribute tables
            def STYLE_ATTR_TAB = 'font-size: 12px; border-collapse:collapse; border-color:#cccccc; border-style:solid; border-width:1px; width: 25%; table-layout: fixed;'
            def STYLE_ATTR_CELL = 'border-color:#cccccc; border-style:solid; border-width:1px; padding: 5px;'

        // Images
            def STYLE_IMG = 'border: 1px solid silver; width:100%; max-height:600px; max-width:600px; width:auto; height:auto;'

        // Details
            def STYLE_DET = 'color: black'

    // ====================================================================================================
    // = Variables
    // ==================================================================================================== 
        def text = ''
        def rText = ''
        def htmlStr = '<html><meta charset="UTF-8"><body style="' + STYLE_BODY + '">' + EOL
        def htmlFileTmp = null
        if (LARGE_MAP_USE_FILE)
            htmlFileTmp = new File(OUT_DIR + OUT_TMP_FILENAME)
        def depth = 0
        def initialDepth = getNodeLevel(false) + 1 // Get the level of the current node, this allows to generate the html document from anywhere, not only the root node
        @Field def SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-yy hh:mm:ss") // Used in the debug function 

        // Icons
            def iconsText = ''
            def iconsHtml = ''
            def iconsMap = [:] // Key/value pair of icons with Name/FullDirectory

// ####################################################################################################
// # Functions
// #################################################################################################### 

        // ====================================================================================================
        def m(message) { // = Message box (mainly to debug)
        // ==================================================================================================== 
            ui.informationMessage(message + '') // + '' to convert numeric types to string
            }

        // ====================================================================================================
         def d(message) { // = To write debug messages to a file
        // ====================================================================================================
            if (DEBUG) {
                BufferedWriter bw = new BufferedWriter(new FileWriter(DEBUG_FILE_PATH, true));
                Date date = new Date();
                bw.write(df.format(date) + ' ' + message);
                bw.newLine();
                bw.flush();
                bw.close();
                }
            }

        // ====================================================================================================
        def rawText(text, removeStatus) { // = To get only the main text in the nodes without some html and the status 
        // ==================================================================================================== 
            // Remove html tags
                def rawText = text.replaceAll('<(html|head|body|p|span).*?>', '')
                rawText = rawText.replaceAll('</(html|head|body|p|span)>', '')
                rawText = rawText.replaceAll('^\\s*', '')
            // Remove the status
                if (removeStatus)
                    rawText = rawText.replaceAll('(s-1|s0|s1|s2|s3) ', '')
            // Allows to add end of lines to nodes, so add $$ to have a end of line in the text of the node. It could be possible to have end of lines in core text, but freeplane set automatically end of lines to wrap the nodes, and these appear in the html... so I have no way of differenciating my own end of lines with those of FP...
                rawText = rawText.replaceAll('\\$\\$', '<br>')
            return rawText.trim()
            }

        // ====================================================================================================
        def rawNote(node) { // = To get only the some html tags from notes
        // ==================================================================================================== 
            // Remove html tags
                def rawNote = node.noteText
                // Remote html tags and entities
                    rawNote = rawNote.replaceAll('<(html|head|body|p|span|pre).*?>', '')
                    rawNote = rawNote.replaceAll('</(html|head|body|p|span|pre)>', '')
                    rawNote = rawNote.replaceAll('&#160;', '')
                // Remove empty lines and spaces
                    rawNote = rawNote.replaceAll('\\n\\s*\\n\\s*\\n', '\n') // Remove multiple empty lines
                    rawNote = rawNote.replaceAll('\\n\\s*?$', '') // Remove last end of line
                    rawNote = rawNote.replaceAll('^\\s*?(\\S)', '$1') // Spaces at the beginning left-over by remoteHtmlTagsFromString()
            return rawNote
            }

        // ====================================================================================================
        def ignoreNode(pNode) { // = Add the ability to ignore the nodes that are found under a node with
        // ==================================================================================================== 
            pNode.pathToRoot.any { 
                    // the core text 'OLD', 'IGNORE', 'BAK'
                        it.text == 'IGNORE' || it.text == 'OLD' || it.text == 'BAK' || 
                    // or under nodes that have the icons 'button_cancel' or 'closed' 
                        //it.icons.collect{it.toString()}.join(';') =~ '(^|;)(button_cancel|closed)' || 
                        it.icons.collect{it.toString()}.join(';') =~ '(^|;)(closed)' || 
                    // or an attribute with the name 'Type' with the value 'Private' (For Quinbus' exclusion of nodes using an attribute name (https://sourceforge.net/p/freeplane/discussion/758437/thread/67f8576c/))
                        it.attributes.findAll{it.key.toLowerCase()=='type' && (it.value.toLowerCase()=='private' || it.value.toLowerCase()=='NOEXPORT')}.size() > 0 // For Quinbus' exclusion of nodes using an attribute name 'Type' with the value 'Private' (https://sourceforge.net/p/freeplane/discussion/758437/thread/67f8576c/) 
                } 
            }

        // ====================================================================================================
        def truncateField(pStr, pSize) // =
        // ====================================================================================================
        {
            def text = ''
            if (pStr.length() > pSize) // If that text is longer than the max length of text allowed
                text = pStr.substring(0, pSize - 1) + '...'
            else
                text = pStr
            return text.replaceAll("'", "''") // Double the apostrophes so there is no issue inserting the strings in the database
        }

// ####################################################################################################
// # Initialization
// #################################################################################################### 
    if (LARGE_MAP_USE_FILE)
        htmlFileTmp.delete() // Because we append we need to delete the file first.

    // ====================================================================================================
    // = Create folders
    // ==================================================================================================== 
        // Debug folder
            def folder = new File(DEBUG_DIR)
                if(!folder.exists())
                  folder.mkdirs()

        // Html doc folder
            folder = new File(OUT_DIR)
                if(!folder.exists())
                  folder.mkdirs()

    // ====================================================================================================
    // = Prepare icons for all nodes
    // ==================================================================================================== 

        // ----------------------------------------------------------------------------------------------------
        // - Put all icons in a map (Key/value pair of icons with Name/FullDirectory)
        // ---------------------------------------------------------------------------------------------------- 
            new File(ICONS_PATH).eachFileRecurse() { file ->
                String fileWithoutExt = file.name.take(file.name.lastIndexOf('.')) // Get icons name without directory and extension.
                if (fileWithoutExt != '') {
                    // Store the file name without extension and directory as the key, and the full path as the value.
                        iconsMap[fileWithoutExt] = file.getAbsolutePath().toString().replace("\\", "/")
                        //d(iconsMap[fileWithoutExt])
                }
            }

    // ====================================================================================================
    // = Other initializations
    // ==================================================================================================== 

        // Check if JLatexMath is in the lib directory
            hasJLatexMathLib = false
            if (new File(LIB_PATH + 'jlatexmath-1.0.6.jar').exists())
                hasJLatexMathLib = true

// ####################################################################################################
// # Main
// #################################################################################################### 

    // ====================================================================================================
    // = Loop the nodes under the selected node 
    // ==================================================================================================== 
        node.findAll().each { n ->

            // Ignore the nodes that are under a specific node (see function declaration)
                if (ignoreNode(n))
                    return

                sTag = eTag = ''

                // ====================================================================================================
                // = Determine what is in the node
                // ==================================================================================================== 

                    text = n.text

                    // ----------------------------------------------------------------------------------------------------
                    // - Formula
                    // ---------------------------------------------------------------------------------------------------- 
                        if (text.startsWith('=')) {
                            text = n.transformedText
                        }

                    // ----------------------------------------------------------------------------------------------------
                    // - Latex
                    // ---------------------------------------------------------------------------------------------------- 
                        hasLatex = false
                        if (text.startsWith('\\latex'))
                            hasLatex = true

                    // ----------------------------------------------------------------------------------------------------
                    // - Text
                    // ---------------------------------------------------------------------------------------------------- 
                        rText = rawText(text, false)

                    // ----------------------------------------------------------------------------------------------------
                    // - Link
                    // ---------------------------------------------------------------------------------------------------- 
                        link = ''
                        hasLink = false
                        if (n.link.text != null) {
                            hasLink = true
                            link = n.link.text
                        }

                    // ----------------------------------------------------------------------------------------------------
                    // - Details
                    // ---------------------------------------------------------------------------------------------------- 
                        details = ''
                        hasDetails = false
                        if (n.details != null) {
                            hasDetails = true
                            details = n.details
                        }

                    // ----------------------------------------------------------------------------------------------------
                    // - Note
                    // ---------------------------------------------------------------------------------------------------- 
                        //note = ''
                        hasNote = false
                        if (n.note != null) {
                            if (n.note.text != null) {
                                hasNote = true
                                rNote = rawNote(n)
                            }
                        }

                    // ----------------------------------------------------------------------------------------------------
                    // - External URI
                    // ---------------------------------------------------------------------------------------------------- 
                        xUri = ''
                        hasXUri = false
                        if (n.externalObject.uri != null) {
                            hasXUri = true
                            xUri = n.externalObject.uri
                        }

                    // ----------------------------------------------------------------------------------------------------
                    // - Personal note (Allows to add my notes to the documentation without having it appearing on the final doc. It allows also to disable (hide) nodes (add s-1 for example) from the final doc.)
                    // ---------------------------------------------------------------------------------------------------- 
                        if (rText =~ /^(s-1|s0|s1|s2|s3)\s/)
                            return

                    // ----------------------------------------------------------------------------------------------------
                    // - If icon is the red x then dont include this node
                    // ---------------------------------------------------------------------------------------------------- 
                        iconsText = n.icons.collect{it.toString()}.join(';')
                        if (iconsText =~ '(^|;)(button_cancel)')
                            return
               
            // ====================================================================================================
            // = Initialize stuff like counters, depth 
            // ==================================================================================================== 
                id = n.id // Used to reference the nodes one to another, and also for the toc
                aName = '<a name="' + id + '">'

                // Set depth according to the nodes locations
                    depth = ((n.getNodeLevel(false) + 1) - initialDepth) + 1

                // ----------------------------------------------------------------------------------------------------
                // - Adjust the depth according to some icons to indicate another depth.
                // ---------------------------------------------------------------------------------------------------- 
                    if (iconsText.contains(CHANGE_DEPTH_ICON + '2'))
                        depth = 2
                    else if (iconsText.contains(CHANGE_DEPTH_ICON + '3'))
                        depth = 3
                    else if (iconsText.contains(CHANGE_DEPTH_ICON + '4'))
                        depth = 4

                // ----------------------------------------------------------------------------------------------------
                // - Set indentation
                // ---------------------------------------------------------------------------------------------------- 
                    indentSp = TAB_CHR_SP.multiply(depth * TAB) // Add indentation according to the depth level 
                    if (depth > 4)
                        indentNbsp = TAB_CHR_NBSP.multiply((depth - 4) * TAB) // Add indentation according to the depth level for the paragraphs, if a node is a child of paragraph it will appear indended under.
                    else
                        indentNbsp = ''

                // ----------------------------------------------------------------------------------------------------
                // - Get nodes around (current position, previous, next)
                // ---------------------------------------------------------------------------------------------------- 
                    def previousNode = null
                    def nextNode = null
                    if (n.parent != null) { 
                        nodePosition = n.parent.getChildPosition(n) // Gets the node position among the children nodes of its parent
                        if (nodePosition - 1 >= 0)
                            previousNode = n.parent.children[nodePosition - 1]
                        if (nodePosition + 1 < n.parent.children.size())
                            nextNode = n.parent.children[nodePosition + 1]
                    }

                iText = rText
                cptNode += 1 

            // ====================================================================================================
            // = Prepare icons for the current node
            // ==================================================================================================== 

                // ----------------------------------------------------------------------------------------------------
                // Put them all side by side in this iconsHtml string
                // ---------------------------------------------------------------------------------------------------- 
                    iconsHtml = ''
                    def iconPath = ''
                    def iconName = ''
                    n.icons.each {
                        iconName = it.toString().tokenize('/').last() // Get the last part of the icon name because it may contain some of the path.
                        if (!iconName.contains(CHANGE_DEPTH_ICON)) { // Ignore the icons that are the icons used to change the depth.
                            iconPath = iconsMap.get(iconName)?.value
                            if (iconPath != null) // If the path is null, it means that one of the icons in the current node doesn't have a path (file) in the iconsMap collected earlier from scanning the icons folder and subfolders. So that icon would be somewhere else not in these folders.
                                iconsHtml += ('<img src="file://' + iconPath + '" width="12" height="12" />')
                        }
                    }

            // ====================================================================================================
            // = Create the latex image files 
            // ==================================================================================================== 
                // BEGIN - LATEX (Comment out this section if jlatexmath-1.0.6.jar is not in C:\Users\%USERNAME%\AppData\Roaming\Freeplane\1.6.x\lib. See the demo map documentation for Latex usage)
                    /* if (hasLatex && hasJLatexMathLib) { */
                    /*     // Extract the first latex snippet between $ and $ */
                    /*         int first = text.indexOf('$'); */
                    /*         int second = text.indexOf('$', first + 1) */
                    /*         latexInFormula = text.substring(first + 1, second) */
                    /*         hasLatex = true */
                    /*     // Add the latext extracted to the latext array (this is one of the environment supported by JLatexMath) */
                    /*         latex = '\\begin{array}{lr}' */
                    /*         latex += latexInFormula */
                    /*         latex += '\\end{array}' */
                    /*     // Process the latex string and create a latex image from it */
                    /*         TeXFormula teXFormula = new TeXFormula(latex) */
                    /*         TeXIcon icon = teXFormula.createTeXIcon(TeXConstants.STYLE_DISPLAY, 40) */
                    /*         image = new BufferedImage(icon.getIconWidth(), icon.getIconHeight(), BufferedImage.TYPE_4BYTE_ABGR); */
                    /*         jl = new JLabel(); */
                    /*         icon.paintIcon(jl, image.getGraphics(), 0, 0); */
                    /*     // Write the latex image to disk */
                    /*         latexPng = OUT_DIR + id + ".png" */
                    /*         File outputfile = new File(latexPng); */
                    /*         ImageIO.write(image, "png", outputfile); */
                    /*     // Set the link to the image created so it is treated as if the node had a link to a png */
                    /*         link = latexPng */
                    /*         hasLink = true */
                    /* } */
                // END - LATEX

            // ====================================================================================================
            // = Header nodes 
            // ==================================================================================================== 

                // ----------------------------------------------------------------------------------------------------
                // - H1
                // ---------------------------------------------------------------------------------------------------- 
                    if (depth == 1) { // Root node
                        if (!SHOW_TITLE) // Don't show the title
                            return
                        sTag = EOL + indentSp + '<h1>' + aName
                        eTag = '</h1>' + EOL
                    }

                // ----------------------------------------------------------------------------------------------------
                // - H2
                // ---------------------------------------------------------------------------------------------------- 
                    else if (depth == 2) {
                        if (cptNode == 2) { // If it is the 2nd node, add the table of content placeholder before. It is not added after the first node because there may be detail added after the node 1.
                            sTag = indentSp + '@@TOC@@'
                            tocIndent = indentSp
                        }
                        if (rText != '') {
                            // ····································································································
                            // · Add breadcrumbs
                            // ···································································································· 
                                breadcrumbs = ''
                                if (ADD_H2_BREADCRUMBS) {
                                    breadcrumbs = '<i><small>'
                                    n.pathToRoot.each { it -> breadcrumbs += ' / ' + '<a href="#' + it.id + '">' + truncateField(it.plainText, SHORT_TEXT_MAX_SIZE) + '</a>' }
                                    // ····································································································
                                    // · Add previous and next links before and after the breadcrumbs
                                    // ···································································································· 
                                        if (previousNode != null)
                                            breadcrumbs = '<a href="#' + previousNode.id + '"><</a> ' + breadcrumbs
                                        if (nextNode != null)
                                            breadcrumbs += ' <a href="#' + nextNode.id + '">></a>'
                                    breadcrumbs += '</small></i><br>'
                                }
                            if (cptNode == 2) // If it is the second node don't add the '<br>' because it put too many space after the table of content
                                sTag += EOL + indentSp + SEP2 + '<h2 style="' + STYLE_H2 + '">' + aName
                            else
                                sTag += EOL + '<br>' + indentSp + SEP2 + '<h2 style="' + STYLE_H2 + '">' + aName
                            eTag = '</h2>' + breadcrumbs // + TOC_BACK_LINK
                            toc += indentSp + '&#8226; ' + ' <big><a style="' + STYLE_H2 + '" href="#' + id + '">' + rText + '</a></big> ' + iconsHtml + EOL
                        }
                    }

                // ----------------------------------------------------------------------------------------------------
                // - H3
                // ---------------------------------------------------------------------------------------------------- 
                    else if (depth == 3) {
                        if (rText != '') {
                            // ····································································································
                            // · Add breadcrumbs
                            // ···································································································· 
                                breadcrumbs = ''
                                if (ADD_H3_BREADCRUMBS) {
                                    breadcrumbs = '<i><small>'
                                    n.pathToRoot.each { it -> breadcrumbs += ' / ' + '<a href="#' + it.id + '">' + truncateField(it.plainText, SHORT_TEXT_MAX_SIZE) + '</a>' }
                                    // ····································································································
                                    // · Add previous and next links before and after the breadcrumbs
                                    // ···································································································· 
                                        if (previousNode != null)
                                            breadcrumbs = '<a href="#' + previousNode.id + '"><</a> ' + breadcrumbs
                                        if (nextNode != null)
                                            breadcrumbs += ' <a href="#' + nextNode.id + '">></a>'
                                    breadcrumbs += '</small></i><br>'
                                }
                            sTag = EOL + indentSp + SEP3 + '<h3 style="' + STYLE_H3 + '">' + aName
                            eTag = '</h3>' + breadcrumbs + EOL
                            toc += indentSp + '&#9675; ' + ' <a style="' + STYLE_H3 + '" href="#' + id + '">' + rText + '</a> ' + iconsHtml + EOL
                        }
                    }

                // ----------------------------------------------------------------------------------------------------
                // - H4
                // ---------------------------------------------------------------------------------------------------- 
                    else if (depth == 4) {
                        if (rText != '') {
                            // ····································································································
                            // · Add breadcrumbs
                            // ···································································································· 
                                breadcrumbs = ''
                                if (ADD_H4_BREADCRUMBS) {
                                    breadcrumbs = '<i><small>'
                                    n.pathToRoot.each { it -> breadcrumbs += ' / ' + '<a href="#' + it.id + '">' + truncateField(it.plainText, SHORT_TEXT_MAX_SIZE) + '</a>' }
                                    // ····································································································
                                    // · Add previous and next links before and after the breadcrumbs
                                    // ···································································································· 
                                        if (previousNode != null)
                                            breadcrumbs = '<a href="#' + previousNode.id + '"><</a> ' + breadcrumbs
                                        if (nextNode != null)
                                            breadcrumbs += ' <a href="#' + nextNode.id + '">></a>'
                                    breadcrumbs += '</small></i><br>'
                                }
                            sTag = EOL + indentSp + SEP4 + '<h4 style="' + STYLE_H4 + '" style="' + STYLE_H4 + '">' + aName
                            eTag = '</h4>' + breadcrumbs + EOL
                            //toc += indentSp + '&#183; <i><small><a style="' + STYLE_H4 + '" href="#' + id + '">' + rText + '</a></small></i>' + EOL
                            toc += indentSp + '&#183; ' + ' <i><small><a style="' + STYLE_H4 + '" href="#' + id + '">' + rText + '</a></small></i> ' + iconsHtml + EOL
                        }
                    }

            // ====================================================================================================
            // = Not H1, H2, ..., so determine the type of node it is. The elements below cannot be added at the H1 level for example, there cannot be an image as H1. 
            // ==================================================================================================== 
                else {

                    // ----------------------------------------------------------------------------------------------------
                    // - Image inserted (displayed in the map)
                    // ---------------------------------------------------------------------------------------------------- 
                        if (hasXUri) {
                            p = ''
                            if (rText != '')
                                p = '<p>' + indentNbsp + text + '</p>' + EOL
                            sTag = indentSp + p + indentNbsp + '<img src="' + xUri + '" alt="' + rText + '" style="' + STYLE_IMG + '"/>' + aName
                            eTag = '<br>' + EOL
                            iText = ''
                            }

                    // ----------------------------------------------------------------------------------------------------
                    // - Nodes that have no links and no notes
                    // ---------------------------------------------------------------------------------------------------- 
                        else if (!hasLink && !hasNote) {
                            // List element
                                if (rText.take(2) == '* ') {
                                    sTag = indentSp + '<li>' + aName
                                    eTag = '</li>' + EOL
                                    iText = rText.substring(2) // Remove 2 first chars '* ' 
                                }
                            // Paragraph
                                else {
                                    sTag = indentSp + '<p>' + aName + indentNbsp
                                    eTag = '</p>' + EOL
                                }
                        }

                    // ----------------------------------------------------------------------------------------------------
                    // - Nodes that are only links
                    // ---------------------------------------------------------------------------------------------------- 
                        else if (hasLink && !hasNote) {
                            // Insert the file in the document in a gray box (for the following file types) (add file types if necessary)
                                if (link =~ /(txt|log|sh|groovy|vim|ini)$/) {
                                    link = link.replace('file://', '')
                                    link = link.replace('file:/', '')
                                    file = new File(link)
                                    if (file.exists())
                                        iText = file.getText('UTF-8')
                                    else
                                        iText = "File '" + link + "' doesn't exist."
                                    sTag = indentSp + S_BOX + aName
                                    eTag = EOL + indentSp + E_BOX
                                }
                            // Show as image
                                else if (link =~ /(png|jpg)$/) {
                                    sTag = indentSp + indentNbsp + '<img src="' + link + '" alt="' + rText + '" style="' + STYLE_IMG + '"/>' + aName
                                    eTag = '<br>' + EOL
                                    iText = ''
                                }
                            // Freeplane link
                                else if (link =~ /mm#ID_/) {
                                    linkId = (link =~ /#(ID_.*)/)[0][1] // Extract ID_<NUMBER> part from the link
                                    sTag = indentSp + aName + indentNbsp + '<a href="#' + linkId + '">'
                                    eTag = '</a><br>' + EOL
                                }
                            // Just add the link to the file
                                else { 
                                    sTag = indentSp + aName + indentNbsp + '<a href="' + link + '">'
                                    eTag = '</a><br>' + EOL
                                }
                            }
                    // ----------------------------------------------------------------------------------------------------
                    // - Nodes that are notes (Notes node have to have core text, just put something that describe the node but it will not be displayed).
                    // ---------------------------------------------------------------------------------------------------- 
                        else if (hasNote && !hasLink) {
                            sTag = aName + S_BOX
                            eTag = E_BOX
                            iText = rNote
                        }
                } // End - else { // Determine the type of node it is

                // Once the tags and the text have being determined and set, add them to the document string.
                    if (sTag != '' || eTag != '') {
                        if (iconsHtml != '')
                            iconsHtml += ' '
                        htmlStr += sTag + iconsHtml + iText + eTag
                    }

                // ====================================================================================================
                // = Details 
                // ==================================================================================================== 
                    if (hasDetails)
                        //htmlStr += indentSp + '<p style="' + STYLE_DET + '">' + aName + indentNbsp + '<small><i>(' + details + ')</i></small></p>' + EOL
                        htmlStr += indentSp + indentNbsp + aName + '<small style="' + STYLE_DET + '"><i>(' + details + ')</i></small><br>' + EOL

                // ====================================================================================================
                // = Attributes: Add as a table if any
                // ==================================================================================================== 
                    // s0 Try to add spaces before the tables... it doesn't work if I just add indentNbsp http://stackoverflow.com/questions/29046021/apply-space-character-before-table-in-html
                    if (n.attributes.size() > 0) {
                        def tableStr = indentSp + '<table style="' + STYLE_ATTR_TAB + '">' + EOL
                        // Loop the attributes and create a row with 2 cells for each
                            n.attributes.names.each { attributeName ->
                                //attributeValue = n.attributes.get(attributeIndex)
                                attributeValue = n[attributeName]
                                tableStr += indentSp + '<tr>' + EOL
                                tableStr += indentSp + '<td style="' + STYLE_ATTR_CELL + '">' + attributeName + '</td>' + EOL
                                tableStr += indentSp + '<td style="' + STYLE_ATTR_CELL + '">' + attributeValue + '</td>' + EOL
                                tableStr += indentSp + '</tr>' + EOL
                            }
                        tableStr += indentSp + '</table><br>' + EOL
                        htmlStr += tableStr
                    }

                // ====================================================================================================
                // = Connectors: Add as links if any 
                // ==================================================================================================== 
                    // · Connectors
                        // · In
                            def connectorsInList = ''
                            def nbConnectorsIn = 0
                            n.connectorsIn.each {
                                if (ignoreNode(it.source)) // If the source node is in a IGNORE section then we exclude it.
                                    return
                                // Connector labels
                                    def sLabel = ''
                                    def mLabel = ''
                                    def tLabel = ''
                                    if (it.sourceLabel != null)
                                        sLabel = '[' + it.sourceLabel + ']'
                                    if (it.middleLabel != null) {
                                        // Don't add the connector link
                                            if (it.middleLabel.contains('IGNORE'))
                                                return
                                        mLabel = '[' + it.middleLabel + ']---'
                                        }
                                    if (it.targetLabel != null) {
                                        // Don't add the connector link
                                            if (it.targetLabel.contains('IGNORE'))
                                                return
                                        tLabel = '[' + it.targetLabel + ']'
                                        }
                                // Get the full path of the connected node
                                    pathToNode = ''
                                    it.source.pathToRoot.each { it2 -> pathToNode += '/' + truncateField(it2.plainText, SHORT_TEXT_MAX_SIZE) }
                                // Add the connector to the text list
                                    connectorsInList += indentSp + indentNbsp + '<small><a href="#' + it.source.id + '">< ' + it.source.plainText + '</a></small>'
                                    if (SHOW_CONNECTOR_DETAILS)
                                        connectorsInList += ' <i><small>This section' + tLabel + '<---' + mLabel + sLabel + it.source.plainText + '{' + pathToNode + '}</small></i><br>' + EOL
                                    else
                                        connectorsInList += '<br>' + EOL
                            }
                            htmlStr += connectorsInList
                        // · Out
                            def connectorsOutList = ''
                            def nbConnectorsOut = 0
                            n.connectorsOut.each {
                                if (ignoreNode(it.target)) // If the target node is in a IGNORE section then we exclude it.
                                    return
                                // Connector labels
                                    def sLabel = ''
                                    def mLabel = ''
                                    def tLabel = ''
                                    if (it.sourceLabel != null) {
                                        // Don't add the connector link
                                            if (it.sourceLabel.contains('IGNORE'))
                                                return
                                        sLabel = '[' + it.sourceLabel + ']'
                                        }
                                    if (it.middleLabel != null) {
                                        // Don't add the connector link
                                            if (it.middleLabel.contains('IGNORE'))
                                                return
                                        mLabel = '---[' + it.middleLabel + ']'
                                        }
                                    if (it.targetLabel != null)
                                        tLabel = '[' + it.targetLabel + ']'
                                // Get the full path of the connected node
                                    pathToNode = ''
                                    it.target.pathToRoot.each { it2 -> pathToNode += '/' + truncateField(it2.plainText, SHORT_TEXT_MAX_SIZE) }
                                // Add the connector to the text list
                                    connectorsOutList += indentSp + indentNbsp + '<small><a href="#' + it.target.id + '">> ' + it.target.plainText + '</a></small>'
                                    if (SHOW_CONNECTOR_DETAILS)
                                         connectorsOutList += ' <i><small>This section' + sLabel + mLabel+ '--->'  + tLabel + it.target.plainText + '{' + pathToNode + '}</small></i><br>' + EOL
                                    else
                                        connectorsOutList += '<br>' + EOL
                            }
                            htmlStr += connectorsOutList

            if (LARGE_MAP_USE_FILE) {
                htmlFileTmp.append(htmlStr, 'utf-8') // Append the chunck to the temp file.
                htmlStr = '' // Reset the string for the next chunk appended.
            }
        } // End - c.findAll().each...

    // ====================================================================================================
    // = Create/update the html file
    // ==================================================================================================== 
        // Append the closing tags
            htmlStr += '</body></html>'
        // Open the final output file
            def htmlFile = new File(OUT_DIR + OUT_FILENAME)
        // Put the content of the temp file to the final html doc file by looping line by line and replace the TOC 
            if (LARGE_MAP_USE_FILE) {
                    htmlFileTmp.append(htmlStr, 'utf-8')
                    htmlFile.delete() // Make sure it is deleted because we append to it.
                // Loop the lines in the temp files and for each, try to replace for the table of content.
                    def replaced = false
                    htmlFileTmp.each { String line ->
                        if (!replaced) { // Check if the TOC is replaced already, if not then...
                            if (line.contains('@@TOC@@')) { // Check if the TOC is on the current line...
                                if (SHOW_TOC) // If we want to show the TOC then add it by a replacement
                                    line = line.replace('@@TOC@@', S_TOC + toc + tocIndent + E_TOC) 
                                else
                                    line = line.replace('@@TOC@@', '') // No TOC
                                replaced = true // Set the flag to tell it is replaced and no need to check for the TOC anymore. 
                            }
                        }
                        htmlFile.append(line + EOL)
                    }
                // Delete the temp file
                    htmlFileTmp.delete()

            }
        // If memory (string) was used to keep the document
            else { 
                // Add the table of contents
                if (SHOW_TOC)
                    htmlStr = htmlStr.replace('@@TOC@@', S_TOC + toc + tocIndent + E_TOC) 
                else
                    htmlStr = htmlStr.replace('@@TOC@@', '') 
                htmlFile.write(htmlStr, 'utf-8')
            }
			
		// Copy the file to a file with the name of the map. This will allow to export multiple files and have them linked together.
            try {
                File outFile = new File(OUT_DIR + OUT_FILENAME);
                File mapFile = new File(OUT_DIR + map.name + '.html');
                FileUtils.copyFile(outFile, mapFile);
            } catch(Exception e) {}

        m("HTML document saved as '" + OUT_DIR + OUT_FILENAME + "' and to '" + OUT_DIR + map.name + '.html' + "'.")

    // ====================================================================================================
    // = Create the PDF file (close the pdf file prior to running this)
    // ==================================================================================================== 
        /* command = '"C:\\Tools\\PrinceXML\\bin\\prince.exe c:\\temp\\out.html c:\\temp\\out.pdf"' */
        /* executeOnShell(command) */
        /* // Remove the princexml logo (uses a batch file with vim commands inside) */ 
        /*     // The batch file here contains only this command: c:\vim\vim74\vim.exe -c "e c:/temp/out.pdf | exe 'g,^\/T (www\.princexml\.com,norm 9k16dd' | exe 'g,^<<\/Producer (Prince,norm 1k4dd' | wq" */
        /*     command = '"C:\\Users\\alexandre.viau\\AppData\\Roaming\\Freeplane\\1.5.x\\scripts\\MapToHtmlDocRemovePrinceXmlLogo.bat"' */
        /*     executeOnShell(command) */
        // For now add this to a batch file to convert manually and add the link to that batch in the taskbar
            // C:\Tools\PrinceXML\bin\prince.exe c:\temp\out.html c:\temp\out.pdf
            // c:\vim\vim74\vim.exe -c "e c:/temp/out.pdf | exe 'g,^\/T (www\.princexml\.com,norm 9k16dd' | exe 'g,^<<\/Producer (Prince,norm 1k4dd' | 0407
            // c:\temp\out.pdf
