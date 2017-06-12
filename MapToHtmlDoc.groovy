// Version: 2017-06-12_14.38.23
    // Changes:
        // I added 1 <br> after the attributes so that there is the same spacing as with paragraph before the sections.
        // I added a check if a file exists before to insert it to the gray box, so that if it is moved it will not cause a script error and have the script to stop. It will tell in the gray box that the file xyz doesn't exist. 

// Functions
    // Message box (mainly to debug)
        def m(message) {
            ui.informationMessage(message + '') // + '' to convert numeric types to string
            }

    // To get only the main text in the nodes without some html and the status 
        def rawText(text, removeStatus) {
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

    // To get only the some html tags from notes
        def rawNote(note) {
            // Remove html tags
                def rawNote = note.replaceAll('<(html|head|body|p|span|pre).*?>', '')
                rawNote = rawNote.replaceAll('</(html|head|body|p|span|pre)>', '')
                rawNote = rawNote.replaceAll('^\\s*', '')
            return rawNote.trim()
        }

    // Execute and external command
        def executeOnShell(String command) {
            return executeOnShell(command, new File(System.properties.'user.dir'))
        }

        def executeOnShell(String command, File workingDir) {
            //println command
            def process = new ProcessBuilder(addShellPrefix(command))
                                        .directory(workingDir)
                                        .redirectErrorStream(false) 
                                        .start()
            //process.inputStream.eachLine {println it}
            process.waitFor();
            return process.exitValue()
        }

        def addShellPrefix(String command) {
            commandArray = new String[3]
            commandArray[0] = "cmd.exe"
            commandArray[1] = "/c" // Put no trailing space here
            commandArray[2] = command
            return commandArray
        }

    // Add the ability to ignore the nodes that are found under a node with the core text 'OLD' or 'IGNORE'
        def ignoreNode(pNode) {
            pNode.pathToRoot.any {it.text == 'IGNORE' || it.text == 'OLD' || it.text == 'BAK'}
        }

// Constants and variables
    // Constants
        def EOL = '\r\n'
        def TAB = 3 // Number of space in a "TAB"
        def TAB_CHR_SP = ' ' // The caracter used to indent in the source html 
        def TAB_CHR_NBSP = '&nbsp;' // The caracter used to indent as displayed on screen
        // Separators
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

    // Fonts
        // https://www.w3schools.com/cssref/css_websafe_fonts.asp
        def FONT_MAIN = 'font-family: Arial, Helvetica, sans-serif;' 
        def STYLE_H2 = 'color: #0033FF;'
        def STYLE_H3 = 'color: #00B439;'
        def STYLE_H4 = 'color: #990000;'

    // Body
        def STYLE_BODY = FONT_MAIN + ' font-size: 12px;'

    // Box 
        def STYLE_BOX_PRE_WRAP = 'white-space: pre-wrap; white-space: -moz-pre-wrap; white-space: -pre-wrap; white-space: -o-pre-wrap; word-wrap: break-word;'
        def STYLE_BOX_PRE = 'font-family: \'Lucida Console\', Monaco, monospace; font-size: 9px; background-color: #F0F0F0; padding: 10px;' + STYLE_BOX_PRE_WRAP
        def S_BOX = '<pre style="' + STYLE_BOX_PRE + '">' + EOL
        def E_BOX = '</pre>' + EOL

    // Table of contents 
        def STYLE_TOC = FONT_MAIN + ' font-size: 12px; padding: 10px;'
        def S_TOC = SEP1 + '<h2><a name="toc">Table of contents</a></h2><pre style="' + STYLE_TOC + '">' + EOL
        def E_TOC = '</pre>' + EOL
        def cptNode = 0
        def toc = ''
        def tocIndent
        // Link to return to the toc
            def TOC_BACK_LINK = '<p><small><a href="#toc">[Table of contents]</a></small></p>' + EOL

    // Attribute tables
        def STYLE_ATTR_TAB = 'font-size: 12px; border-collapse:collapse; border-color:#cccccc; border-style:solid; border-width:1px; width: 25%; table-layout: fixed;'
        def STYLE_ATTR_CELL = 'border-color:#cccccc; border-style:solid; border-width:1px; padding: 5px;'

    // Images
        def STYLE_IMG = 'border: 1px solid silver; width:100%; max-height:600px; max-width:600px; width:auto; height:auto;'

    // Variables
        def text = ''
        def rText = ''
        def htmlStr = '<html><meta charset="UTF-8"><body style="' + STYLE_BODY + '">' + EOL
        def depth = 0

// Main
    c.findAll().each { n ->
        // Ignore the nodes that are under a node with the core text 'OLD'
            if (ignoreNode(n))
                return

        // Initialize
            sTag = eTag = ''
            // Determine what is in the node
                // Text
                    text = n.text
                    rText = rawText(text, false)
                    hasText = false
                    if (rText != '')
                        hasText = true
                // Link
                    link = ''
                    hasLink = false
                    if (n.link.text != null) {
                        hasLink = true
                        link = n.link.text
                    }
                // Details
                    details = ''
                    hasDetails = false
                    if (n.details != null) {
                        hasDetails = true
                        details = n.details
                    }
                // Note
                    note = ''
                    hasNote = false
                    if (n.note != null) {
                        if (n.note.text != null) {
                            hasNote = true
                            note = n.note.html
                            rNote = rawNote(n.note.html)
                        }
                    }
                // External URI
                    xUri = ''
                    hasXUri = false
                    if (n.externalObject.uri != null) {
                        hasXUri = true
                        xUri = n.externalObject.uri
                    }
                // Personal note (Allows to add my notes to the documentation without having it appearing on the final doc. It allows also to disable (hide) nodes (add s-1 for example) from the final doc.)
                    if (rText =~ /^(s-1|s0|s1|s2|s3)\s/)
                        return
            
        id = n.id // Used to reference the nodes one to another, and also for the toc
        aName = '<a name="' + id + '">'
        depth = n.getNodeLevel(false) + 1 // Level 1 is the root node
        indentSp = TAB_CHR_SP.multiply(depth * TAB) // Add indentation according to the depth level 
        if (depth > 4)
            indentNbsp = TAB_CHR_NBSP.multiply((depth - 5) * TAB) // Add indentation according to the depth level for the paragraphs, if a node is a child of paragraph it will appear indended under.
        else
            indentNbsp = ''
        iText = rText
        cptNode += 1 
        // H1
            if (depth == 1) { // Root node
                sTag = EOL + indentSp + '<h1>' + aName
                eTag = '</h1>' + EOL
            }
        // H2
            else if (depth == 2) {
                if (cptNode == 2) { // If it is the 2nd node, add the table of content placeholder before. It is not added after the first node because there may be detail added after the node 1.
                    sTag = indentSp + '@@TOC@@'
                    tocIndent = indentSp
                }
                if (rText != '') {
                    if (cptNode == 2) // If it is the second node don't add the '<br>' because it put too many space after the table of content
                        sTag += EOL + indentSp + SEP2 + '<div><h2 style="' + STYLE_H2 + '">' + aName
                    else
                        sTag += EOL + '<br>' + indentSp + SEP2 + '<h2 style="' + STYLE_H2 + '">' + aName
                    eTag = '</h2>' + TOC_BACK_LINK 
                    toc += indentSp + '&#8226; <big><a style="' + STYLE_H2 + '" href="#' + id + '">' + rText + '</a></big>' + EOL
                }
            }
        // H3
            else if (depth == 3) {
                if (rText != '') {
                    sTag = EOL + indentSp + SEP3 + '<h3 style="' + STYLE_H3 + '">' + aName
                    eTag = '</h3>' + EOL
                    toc += indentSp + '&#9675; <a style="' + STYLE_H3 + '" href="#' + id + '">' + rText + '</a>' + EOL
                }
            }
        // H4
            else if (depth == 4) {
                if (rText != '') {
                    sTag = EOL + indentSp + SEP4 + '<h4 style="' + STYLE_H4 + '" style="' + STYLE_H4 + '">' + aName
                    eTag = '</h4>' + EOL
                    toc += indentSp + '&#183; <i><small><a style="' + STYLE_H4 + '" href="#' + id + '">' + rText + '</a></small></i>' + EOL
                }
            }
        // Not H1, H2, ..., so determine the type of node it is. The elements below cannot be added at the H1 level for example, there cannot be an image as H1. 
            else {
                // Image inserted (displayed in the map)
                    if (hasXUri) {
                        p = ''
                        if (rText != '')
                            p = '<p>' + indentNbsp + text + '</p>' + EOL
                        sTag = indentSp + p + indentNbsp + '<img src="' + xUri + '" alt="' + rText + '" style="' + STYLE_IMG + '"/>' + aName
                        eTag = '<br><br>' + EOL
                        iText = ''
                        }
                // Nodes that have no links and no notes
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
                // Nodes that are only links
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
                                eTag = '<br><br>' + EOL
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
                // Nodes that are notes (Notes node have to have core text, just put something that describe the node but it will not be displayed).
                    else if (hasNote && !hasLink) {
                        sTag = indentSp + S_BOX + aName
                        eTag = E_BOX
                        iText = rNote
                    }
            } // End - else { // Determine the type of node it is
            if (sTag != '' || eTag != '')
                htmlStr += sTag + iText + eTag
            if (hasDetails)
                htmlStr += indentSp + '<p>' + aName + indentNbsp + '<small><i>(' + details + ')</i></small></p>' + EOL
            // Add the attributes as a table if any
                // s0 Try to add spaces before the tables... it doesn't work if I just add indentNbsp http://stackoverflow.com/questions/29046021/apply-space-character-before-table-in-html
                if (n.attributes.size() > 0) {
                    def tableStr = indentSp + '<table style="' + STYLE_ATTR_TAB + '">' + EOL
                    // Loop the attributes and create a row with 2 cells for each
                        n.attributes.names.eachWithIndex { attributeName, attributeIndex ->
                            attributeValue = n.attributes.get(attributeIndex)
                            tableStr += indentSp + '<tr>' + EOL
                            tableStr += indentSp + '<td style="' + STYLE_ATTR_CELL + '">' + attributeName + '</td>' + EOL
                            tableStr += indentSp + '<td style="' + STYLE_ATTR_CELL + '">' + attributeValue + '</td>' + EOL
                            tableStr += indentSp + '</tr>' + EOL
                        }
                    tableStr += indentSp + '</table><br>' + EOL
                    htmlStr += tableStr
                }
    } // End - c.findAll().each...

    // Create/update the html file
        htmlStr += '</body></html>'
        // Add the table of contents
            htmlStr = htmlStr.replace('@@TOC@@', S_TOC + toc + tocIndent + E_TOC) 
        def htmlFile = new File('c:/temp/out.html')
        htmlFile.write(htmlStr, 'utf-8')

    // Create the PDF file (close the pdf file prior to running this)
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
