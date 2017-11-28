// @ExecutionModes({ON_SELECTED_NODE})

// ####################################################################################################
// # Version History:
// #################################################################################################### 
        // Version 2017-11-28_10.21.48
            // Added an error message when the root node or the branch root node is ignored.
            // Added parameter to truncateText() so that special chars are not always removed, for performance.
        // Version 2017-11-27_19.04.18
            // The file created and the prefix for the linked images and files will now have the name of the current selected node (the root of the branch and not the map root node). Chars not valid in the that text for files will be replaced by underscore.
        // Version 2017-11-27_18.21.05
            // Added a <br> after images to correct line spacing.
        // Version 2017-11-27_18.16.32
            // Text in images' core text were node process by the rawText function so if html or formatting was added to them they were added with the html and body tags. It is fixed. 
        // Version 2017-11-27_17.36.45
            // Fixed a issue with breadcrumbs: If the document was generated from a branch, the breadcrumbs were still generated from the root node of the map. Seems fixed. 
        // Version 2017-11-24_11.21.46
            // Fixed small bug in the breadcrumbs
        // Version 2017-11-24_11.05.47
            // I did some changes in the breadcrumbs, the first link is Table of contents, and the last is not hyperlinked. 
            // I put thecode in a function not to have it duplicated 3 times.
        // Version 2017-11-23_18.13.39
            // Changed System.getenv("USERNAME") by System.getProperty("user.name"), because System.getenv("USERNAME") seems not to work on Windows XP. 
            // Added a try-catch to avoid icons errors on some nodes.
        // Version 2017-11-22_10.42.43
            // Fixed and issue with verification of the type of file (file or folder).
        // Version 2017-11-22_01.24.55
            // Added support for youtube videos.
        // Version 2017-11-21_20.49.20
            // Added the possibility to add link to image on the web (http).
        // Version 2017-11-21_17.15.22
            // Added the text of the images when the images are only links, the image will be displayed but with its text now.
            // Added jpeg for images as links 
        // Version 2017-11-21_10.05.04
            // I have changed the default values, now markdown is disabled by default and the files and images will be copied to the temp dir:
                // MARKDOWN = false
                // COPY_FILES_TO_OUT_DIR = true
                // COPY_IMAGES_TO_OUT_DIR = true
        // Version 2017-11-21_04.28.35
            // Fixed line spacing issue after h2, h3, h4 when their nodes were empty there was no empty line added. Now if 1 or more is empty 1 empty line will be added (only).
        // Version 2017-11-20_13.18.08
            // Fixed small bug with connectors after markdown.
        // Version 2017-11-20_12.48.50
            // Add the copying of files linked to the OUT_DIR, so now both images and files are copied.
        // Version 2017-11-17_19.56.28 
            // Starting to add export to Markdown files also along with html files (not complete yet).
            // For html document, I added optional copying of images (for embedded image and linked images) to the out_dir for portability, and to upload to websites. For markdown export the images files will always be copied locally because local paths (not http URL) didn't seem to work on windows + the firefox plugin to view Markdown files, so I only put the filename as paths for them. 
        // Version 2017-11-14_14.26.00
            // Replace multiple empty lines in the notes by 1 empty line.
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
            // I removed 1 <br> after the images, there was too many spacing.
            // Added the exclusion of nodes under nodes with some specific icons
        // Version: 2017-06-12_14.38.23
            // I added 1 <br> after the attributes so that there is the same spacing as with paragraph before the sections.
            // I added a check if a file exists before to insert it to the gray box, so that if it is moved it will not cause a script error and have the script to stop. It will tell in the gray box that the file xyz doesn't exist. 


// ####################################################################################################
// # Imports 
// ####################################################################################################
    // To use global Constants (the other option is just to remove '@Field def', not defining the variable will make it "global".
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
	// To get parts of paths
		import org.apache.commons.io.FilenameUtils

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
            @Field def OUT_DIR = 'c:/Temp/'
            def OUT_FILENAME = 'out.html'
            def OUT_TMP_FILENAME = 'outtmp.html'
            // Markdown
                def MD_OUT_FILENAME = 'out.md'
                def MD_OUT_TMP_FILENAME = 'outtmp.md'

		// Freeplane paths
			// def USER_PATH = 'C:/Users/' + System.getenv("USERNAME") + '/AppData/Roaming/Freeplane/1.6.x/'
			def USER_PATH = 'C:/Users/' + System.getProperty("user.name") + '/AppData/Roaming/Freeplane/1.6.x/'
			def ICONS_PATH = USER_PATH + 'icons/'
			def LIB_PATH = USER_PATH + 'lib/' 

        // For connectors
            @Field def SHORT_TEXT_MAX_SIZE = 25 // Number of chars to display in the ShortText field
            def SHOW_CONNECTOR_DETAILS = true

        // For breadcrumbs
            def ADD_H2_BREADCRUMBS = true
            def ADD_H3_BREADCRUMBS = true
            def ADD_H4_BREADCRUMBS = false
    
        // For Markdown (enable export to Markdown, .md files will be also create with the .html files)
            @Field def MARKDOWN = false
            def NOTE_IS_HTML = '<b>|<a href|<i>|<small>|<font' // To identify that a note contains html (to select the display method for the markdown notes: bloquote or code)

		// To copy files or images to the output directory
			def COPY_FILES_TO_OUT_DIR = true
			def COPY_IMAGES_TO_OUT_DIR = true // The images that are link from anywhere on disks will be copied in the output directory and linked in the html and markdown files from there.
            @Field def OVERWRITE_IF_EXISTS = false // If the images or files exists already they will be overwritten if set to true, so copied again everytime.

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

        // Markdown
            def mdToc = ''

    // ====================================================================================================
    // = Variables
    // ==================================================================================================== 
        def branchRootNode = null
        def branchRootName = '' // This is the name of the output document and the prefix for the files linked if they are copied to the output directory
        def text = ''
        def rText = ''
        def htmlStr = '<html><meta charset="UTF-8"><body style="' + STYLE_BODY + '">' + EOL
        def htmlFileTmp = null
        def mdFileTmp = null // Markdown
        if (LARGE_MAP_USE_FILE) {
            htmlFileTmp = new File(OUT_DIR + OUT_TMP_FILENAME)
            if (MARKDOWN)
                mdFileTmp = new File(OUT_DIR + MD_OUT_TMP_FILENAME)
        }
        def depth = 0
        def initialDepth = getNodeLevel(false) + 1 // Get the level of the current node, this allows to generate the html document from anywhere, not only the root node
        @Field def SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-yy hh:mm:ss") // Used in the debug function 

        // Icons
            def iconsText = ''
            def iconsHtml = ''
            def iconsMd = ''
            def iconsMap = [:] // Key/value pair of icons with Name/FullDirectory

        // Markdown
            def mdStr = ''

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
                    rawNote = rawNote.replaceAll('\\n\\s*?\\n\\s*?\\n', '\n\n') // Remove multiple empty lines
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
        def truncateText(pStr, pSize, addDots, removeSpecialChars) { // = Makes text shorter and usable for files etc
        // ====================================================================================================
            def text = ''
            if (pStr.length() > pSize) { // If that text is longer than the max length of text allowed
                if (addDots)
                    text = pStr.substring(0, pSize - 1) + '...'
                else
                    text = pStr.substring(0, pSize - 1)
            }
            else
                text = pStr
            if (removeSpecialChars) // Replace reserved chars for files
                text = text.replaceAll('<|>|:|"|/|\\\\|\\||\\?|\\*', '_')
            // Double the apostrophes so there is no issue inserting the strings in the database
                // text = text.replaceAll("'", "''")
            return text
        }

        // ====================================================================================================
        def getFileFromPath(path) { // = This function was created because there is an issue using for example FileUtils with spaces in paths 
        // ==================================================================================================== 
            // s0 Check if this function could simply be replaced by this because it works for fileTypeCheck: File f = new File(link.replace('file:/', '').replace('%20', ' ')). But this will not replace all encoded chars and also for some reason this function didn't work for fileTypeCheck...
			path = path.replace('file:/', ' ')
            def driveLetter = path.substring(0, 2) // For some reason uri.getPath() returns no drive letter so it is kept here
                URI uri = new URI(path.trim().replaceAll("\\u0020", '%20'))
                File file = new File(driveLetter + uri.getPath())
			return file
            }

        // ====================================================================================================
        def copyFileToOutDir(branchRootName, srcPath) { // = Copy the file in $OUT_DIR and rename it as the mapName + node.id
        // ==================================================================================================== 
            // Markdown: With Markdown we have to copy to the out_dir, this is because (under Windows?) the local paths are not working in Markdown (with Firefox plugin)
            // File object to destination (in OUT_DIR)
                srcPath = srcPath.toString().replace('file:/', '')
                def destFilename = FilenameUtils.getBaseName(srcPath) // Get file name of source file
                def destExt = FilenameUtils.getExtension(srcPath) // Get extension of source file
                    if (destExt != '')
                        destExt = '.' + destExt
                destFilename = branchRootName + '_' + destFilename + '_' + id + destExt
                def destPath = OUT_DIR + destFilename
                def destFile = getFileFromPath(destPath)
            // Only do the copy if the file doesn't exist yet, if it exists re-use the file. So if a user wants to have the file updated they will need to manually delete the images before to run the script. 
                if (!destFile.exists() || OVERWRITE_IF_EXISTS) {
                    // File object from link (source)
                        def srcFile = getFileFromPath(srcPath)
                    // Copy the image to OUT_DIR
                        try {
                            FileUtils.copyFile(srcFile, destFile)
                        }
                        catch (all) { 
                            m('Error copying: ' + srcFile.toString() + ' -> ' + destFile.toString())
                        }
                }
            return destFilename
            }

        // ====================================================================================================
        def addBreadcrumbs(branchRootNode, currentNode, previousNode, nextNode) { // = Adds navigation links as a path of links to sections
        // ==================================================================================================== 
            def breadcrumbsArr = []
            def breadcrumbs = ''
            def mdBreadcrumbs = ''
            breadcrumbs = '<i><small>'
            def branchRootNodeLevel = branchRootNode.getNodeLevel(false) + 1
            currentNode.pathToRoot.eachWithIndex { it, idx -> 
                // Don't make the breadcrumbs for the node before the branchRoot
                    def currentDepth = it.getNodeLevel(false) + 1
                    if (currentDepth < branchRootNodeLevel)
                        return
                // Get the name of the breadcrumb
                    // First one
                        if (currentDepth == branchRootNodeLevel) {
                            breadcrumbName = 'Table of contents'
                            if (MARKDOWN)
                                mdBreadcrumbs += " / [$breadcrumbName](#$it.id)" 
                        }
                    // Others
                        else
                            breadcrumbName = truncateText(it.plainText, SHORT_TEXT_MAX_SIZE, true, false)
                // Add the breadcrumbs
                    // If it is the last breadcrumb then don't add a link
                        if (idx == currentNode.pathToRoot.size() - 1) {
                            breadcrumbs += ' / ' + breadcrumbName
                            if (MARKDOWN)
                                mdBreadcrumbs += " / $breadcrumbName" 
                        }
                    // For other breadcrumbs (not the last) add a link
                        else {
                            breadcrumbs += ' / ' + '<a href="#' + it.id + '">' + breadcrumbName + '</a>' 
                            if (MARKDOWN)
                                mdBreadcrumbs += " / [$breadcrumbName](#$it.id)" 
                        }
            }
            if (MARKDOWN)
                mdBreadcrumbs = mdBreadcrumbs.drop(1)
            // ----------------------------------------------------------------------------------------------------
            // - Add previous and next links before and after the breadcrumbs
            // ---------------------------------------------------------------------------------------------------- 
                if (previousNode != null) {
                    breadcrumbs = '<a href="#' + previousNode.id + '"><</a> ' + breadcrumbs
                    if (MARKDOWN)
                        mdBreadcrumbs = "[<](#$previousNode.id)$mdBreadcrumbs"
                }
                if (nextNode != null) {
                    breadcrumbs += ' <a href="#' + nextNode.id + '">></a>'
                    if (MARKDOWN)
                        mdBreadcrumbs += "[>](#$nextNode.id)"
                }
            breadcrumbs += '</small></i><br>'
            d(breadcrumbs)
            breadcrumbsArr = [breadcrumbs, mdBreadcrumbs] // Return both breadcrumbs strings as an array because java/groovy don't have out parameters
            return breadcrumbsArr
        }

// ####################################################################################################
// # Initialization
// #################################################################################################### 
    if (LARGE_MAP_USE_FILE) {
        htmlFileTmp.delete() // Because we append we need to delete the file first.
        if (MARKDOWN)
            mdFileTmp.delete() // Because we append we need to delete the file first.
    }

    // ====================================================================================================
    // = Create folders
    // ==================================================================================================== 
        // Debug folder
            def folder = new File(DEBUG_DIR)
                if(!folder.exists())
                  folder.mkdirs()

        // Output folder
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
				String fileWithoutExt = FilenameUtils.getBaseName(file.name)
                if (fileWithoutExt != '') {
                    // Store the file name without extension and directory as the key, and the full path as the value.
                        iconsMap[fileWithoutExt] = file.getAbsolutePath().toString().replace("\\", "/")
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
                if (ignoreNode(n)) {
                    if (branchRootNode == null)
                        throw new Exception('The root node and the branch root node cannot be ignored. The script will be terminated.')
                    return
                }

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
                            hasUrlLink = false
                            hasFileLink = false
                            hasFolderLink = false
                            hasVideoLink = false
                        if (n.link.text != null) { // There is a link
                            hasLink = true
                            link = n.link.text
                            if (link =~ /http/) { // Is URL
                                hasUrlLink = true
                                if (link =~ /youtube/) // Is a video
                                    hasVideoLink = true
                            }
                            else { // Is file or folder
                                File fileTypeCheck = new File(link.replace('file:/', '').replace('%20', ' '))
                                if (fileTypeCheck.isFile()) // File
                                    hasFileLink = true
                                else // Folder
                                    hasFolderLink = true
                            }
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
               
            // BranchRoot: Set the current selected node when the script is run as the branchRoot node (it is set only once) 
                if (branchRootNode == null) {
                    branchRootNode = n
                    branchRootName = truncateText(rText, SHORT_TEXT_MAX_SIZE, false, true)  // I use truncateText but really it was meant for another usage.
                }

            // ====================================================================================================
            // = Initialize stuff like counters, depth 
            // ==================================================================================================== 
                id = n.id // Used to reference the nodes one to another, and also for the toc
                aName = '<a name="' + id + '"></a>'

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
                    if (MARKDOWN)
                        iconsMd = ''
                    def iconPath = ''
                    def iconName = ''
                    n.icons.each {
                        try { // This empty try-catch is to avoid an error in case there are specific icons added by users. The icons will not display simply if there is an issue.
                            iconName = it.toString().tokenize('/').last() // Get the last part of the icon name because it may contain some of the path.
                            if (!iconName.contains(CHANGE_DEPTH_ICON)) { // Ignore the icons that are the icons used to change the depth.
                                iconPath = iconsMap.get(iconName)?.value
                                if (iconPath != null) { // If the path is null, it means that one of the icons in the current node doesn't have a path (file) in the iconsMap collected earlier from scanning the icons folder and subfolders. So that icon would be somewhere else not in these folders.
                                    // Copy file (image) to OUT_DIR
                                        if (COPY_IMAGES_TO_OUT_DIR || MARKDOWN) // If we copy images to out dir or we use markdown, get the link filename only as the path (so in the same path as the output file)
                                            iconPath = copyFileToOutDir(branchRootName, iconPath) // Will return only filename of copied dest path  
                                    iconsHtml += ('<img src="' + iconPath + '" width="12" height="12" />')
                                    if (MARKDOWN)
                                        iconsMd += ('![](' + iconPath + ')')
                                }
                            }
                        } catch (all) {}
                    }
                    // Add a space to separate the icon with the text where it will be 
                        if (MARKDOWN) {
                            if (iconsMd != '')
                                iconsMd = iconsMd + ' '
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
                        if (MARKDOWN)
                            mdStr += "# $aName$rText$EOL"
                    }

                // ----------------------------------------------------------------------------------------------------
                // - H2
                // ---------------------------------------------------------------------------------------------------- 
                    else if (depth == 2) {
                        if (cptNode == 2) { // If it is the 2nd node, add the table of content placeholder before. It is not added after the first node because there may be detail added after the node 1.
                            sTag = indentSp + '@@TOC@@'
                            tocIndent = indentSp
                            if (MARKDOWN)
                                mdStr += '@@TOC@@' + EOL
                        }
                        if (rText != '' ) {
                            // Get breadcrumbs
                                def breadcrumbs = ''
                                def mdBreadcrumbs = ''
                                if (ADD_H2_BREADCRUMBS) {
                                    def breadcrumbsArr = addBreadcrumbs(branchRootNode, n, previousNode, nextNode)
                                    if (breadcrumbsArr.size() > 0) {
                                        breadcrumbs = breadcrumbsArr[0]
                                        mdBreadcrumbs = breadcrumbsArr[1]
                                    }
                                }
                            if (cptNode == 2) // If it is the second node don't add the '<br>' because it put too many space after the table of content
                                sTag += EOL + indentSp + SEP2 + '<h2 style="' + STYLE_H2 + '">' + aName
                            else
                                sTag += EOL + '<br>' + indentSp + SEP2 + '<h2 style="' + STYLE_H2 + '">' + aName
                            eTag = '</h2>' + breadcrumbs // + TOC_BACK_LINK
                            toc += indentSp + '&#8226; ' + ' <big><a style="' + STYLE_H2 + '" href="#' + id + '">' + rText + '</a></big> ' + iconsHtml + EOL

                            if (MARKDOWN) {
                                mdStr += "***$EOL"
                                mdStr += "## $aName$iconsMd$rText$EOL"
                                mdStr += "***$EOL"
                                if (ADD_H2_BREADCRUMBS)
                                    mdStr += "*$breadcrumbs*$EOL$EOL"
                                mdToc += "* **[$rText](#$id)** $iconsMd$EOL" // TOC: List element
                            }
                        }
                        // If H2's rText is empty then add an empty line
                            else
                                sTag += '<br>' + EOL
                    }

                // ----------------------------------------------------------------------------------------------------
                // - H3
                // ---------------------------------------------------------------------------------------------------- 
                    else if (depth == 3) {
                        if (rText != '') {
                            // Get breadcrumbs
                                def breadcrumbs = ''
                                def mdBreadcrumbs = ''
                                if (ADD_H3_BREADCRUMBS) {
                                    def breadcrumbsArr = addBreadcrumbs(branchRootNode, n, previousNode, nextNode)
                                    if (breadcrumbsArr.size() > 0) {
                                        breadcrumbs = breadcrumbsArr[0]
                                        mdBreadcrumbs = breadcrumbsArr[1]
                                    }
                                }
                            sTag = EOL + indentSp + SEP3 + '<h3 style="' + STYLE_H3 + '">' + aName
                            eTag = '</h3>' + breadcrumbs + EOL
                            toc += indentSp + '&#9675; ' + ' <a style="' + STYLE_H3 + '" href="#' + id + '">' + rText + '</a> ' + iconsHtml + EOL

                            if (MARKDOWN) {
                                mdStr += "### $aName$iconsMd$rText$EOL"
                                mdStr += "---$EOL"
                                if (ADD_H3_BREADCRUMBS)
                                    mdStr += "*$mdBreadcrumbs*$EOL$EOL"
                                mdToc += '  * ' + "[$rText](#$id) $iconsMd$EOL" // TOC: List element
                            }
                        }
                        // If H3's rText is empty then maybe add an empty line
                            else
                                // If parent was not empty but this node is empty, then add empty line
                                    if (rawText(n.parent.text, false) != '')
                                        sTag += '<br>' + EOL
                    }

                // ----------------------------------------------------------------------------------------------------
                // - H4
                // ---------------------------------------------------------------------------------------------------- 
                    else if (depth == 4) {
                        if (rText != '') {
                            // Get breadcrumbs
                                def breadcrumbs = ''
                                def mdBreadcrumbs = ''
                                if (ADD_H4_BREADCRUMBS) {
                                    def breadcrumbsArr = addBreadcrumbs(branchRootNode, n, previousNode, nextNode)
                                    if (breadcrumbsArr.size() > 0) {
                                        breadcrumbs = breadcrumbsArr[0]
                                        mdBreadcrumbs = breadcrumbsArr[1]
                                    }
                                }
                            sTag = EOL + indentSp + SEP4 + '<h4 style="' + STYLE_H4 + '" style="' + STYLE_H4 + '">' + aName
                            eTag = '</h4>' + breadcrumbs + EOL
                            //toc += indentSp + '&#183; <i><small><a style="' + STYLE_H4 + '" href="#' + id + '">' + rText + '</a></small></i>' + EOL
                            toc += indentSp + '&#183; ' + ' <i><small><a style="' + STYLE_H4 + '" href="#' + id + '">' + rText + '</a></small></i> ' + iconsHtml + EOL

                            if (MARKDOWN) {
                                mdStr += "#### $aName$iconsMd$rText$EOL"
                                if (ADD_H4_BREADCRUMBS)
                                    mdStr += "*$mdBreadcrumbs*$EOL$EOL"
                                mdToc += "      * *[$rText](#$id)* $iconsMd$EOL" // TOC: List element
                            }
                        }
                        // If H4's rText is empty then add an empty line
                            else
                                // If grand-parent was not empty but this node is empty
                                    if (rawText(n.parent.parent.text, false) != '')
                                    // If parent was not empty but this node is empty
                                        if (rawText(n.parent.text, false) != '')
                                            sTag += '<br>' + EOL
                    }

            // ====================================================================================================
            // = Not H1, H2, ..., so determine the type of node it is. The elements below cannot be added at the H1 level for example, there cannot be an image as H1. 
            // ==================================================================================================== 
                else {

                    // ----------------------------------------------------------------------------------------------------
                    // - Image inserted (displayed in the map)
                    // ---------------------------------------------------------------------------------------------------- 
                        if (hasXUri) {
                            def linkPath = xUri.toString() // Set link path to embedded image path
                            // Copy file (image) to OUT_DIR
                                if (COPY_IMAGES_TO_OUT_DIR || MARKDOWN) { // If we copy images to out dir or we use markdown, get the link filename only as the path (so in the same path as the output file)
                                    def outDirFilename = copyFileToOutDir(branchRootName, linkPath) // Will return only filename of copied dest path  
                                    linkPath = outDirFilename // If we copy the images to the OUT_DIR then the path becomes only the filename because it is the same directory as the output file.
                                    }
                            // Html
                                p = ''
                                if (rText != '')
                                    p = '<p>' + indentNbsp + rText + '</p>' + EOL
                                sTag = indentSp + p + indentNbsp + '<img src="' + linkPath + '" alt="' + rText + '" style="' + STYLE_IMG + '">' + aName
                                eTag = '</img><br><br>' + EOL
                                iText = ''
                            if (MARKDOWN)
                                mdStr += "![$rText]($linkPath)$EOL" // Markdown image
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

                                    if (MARKDOWN)
                                        mdStr += "$rText$EOL"
                                }
                            // Paragraph
                                else {
                                    sTag = indentSp + '<p>' + aName + indentNbsp
                                    eTag = '</p>' + EOL

                                    if (MARKDOWN)
                                        mdStr += "$iconsMd$rText$EOL$EOL"
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
                                    if (MARKDOWN) {
                                        // If the note has some html tags (except pre) then it will become a blockquote 
                                            if (iText =~ /$NOTE_IS_HTML/)
                                                mdStr += '> ' + iText.replaceAll('\n', '\n> ') + EOL
                                        // Other it will be code
                                            else
                                                mdStr += "```$EOL" + iText + "$EOL```$EOL$EOL"
                                    }
                                }
                            // Show as image
                                else if (link =~ /(png|jpeg|jpg|gif)$/) {
                                    def linkPath = link // Set link path to embedded image path
                                    // Copy file (image) to OUT_DIR
                                        if (hasFileLink) // Copy only if the image is a file that is linked (because it could be a url and this should not be copied)
                                            if (COPY_IMAGES_TO_OUT_DIR || MARKDOWN) { // If we copy images to out dir or we use markdown, get the link filename only as the path (so in the same path as the output file)
                                                def outDirFilename = copyFileToOutDir(branchRootName, linkPath) // Will return only filename of copied dest path  
                                                linkPath = outDirFilename // If we copy the images to the OUT_DIR then the path becomes only the filename because it is the same directory as the output file.
                                                }
                                    // Html
                                         p = ''
                                        if (rText != '')
                                            p = '<p>' + indentNbsp + rText + '</p>' + EOL
                                        sTag = indentSp + p + indentNbsp + '<img src="' + linkPath + '" alt="' + rText + '" style="' + STYLE_IMG + '">' + aName
                                        eTag = '</img><br><br>' + EOL
                                        iText = ''
                                    if (MARKDOWN)
                                        mdStr += "![$rText]($linkPath)$EOL" // Markdown image
                                }
                            // Freeplane link
                                else if (link =~ /mm#ID_/) {
                                    linkId = (link =~ /#(ID_.*)/)[0][1] // Extract ID_<NUMBER> part from the link
                                    sTag = indentSp + aName + indentNbsp + '<a href="#' + linkId + '">'
                                    eTag = '</a><br>' + EOL
                                    if (MARKDOWN)
                                        mdStr += "[$iconsMd$rText](#$linkId)$EOL$EOL"
                                }
                            // Just add the link to the file
                                else { 
                                    def linkPath = link // Set link path to file path
                                    if (hasFileLink) { // Has to be a file to be copied
                                        // Copy file to OUT_DIR
                                            if (COPY_FILES_TO_OUT_DIR || MARKDOWN) { // If we copy files to out dir or we use markdown, get the link filename only as the path (so in the same path as the output file)
                                                def outDirFilename = copyFileToOutDir(branchRootName, linkPath) // Will return only filename of copied dest path  
                                                linkPath = outDirFilename // If we copy the images to the OUT_DIR then the path becomes only the filename because it is the same directory as the output file.
                                                }
                                        }
                                    if (hasVideoLink) {
                                        // Adapt the Youtube URL to an embedded Youtube URL 
                                            if (linkPath =~ /youtube/) {
                                                linkPath = linkPath.replace('watch?v=', 'embed/')
                                                linkPath = linkPath.replaceAll('&t=\\d+s', '') // Remove the seconds that could be appended
                                            }
                                        sTag = indentSp + indentNbsp + aName + '<iframe src="' + linkPath + '" width="560" height="315" allowfullscreen="allowfullscreen">'
                                        eTag = '</iframe><br>' + EOL
                                    }
                                    else {
                                        sTag = indentSp + indentNbsp + aName + '<a href="' + linkPath + '">'
                                        eTag = '</a><br>' + EOL
                                    }
                                    if (MARKDOWN) {
                                        if (!hasFolderLink) // Ignore links to folder because they don't work in Markdown (at least in Windows with the Firefox plugin)
                                            mdStr += "[$rText]($linkPath)$EOL$EOL"
                                    }
                                }
                            }
                    // ----------------------------------------------------------------------------------------------------
                    // - Nodes that are notes (Notes node have to have core text, just put something that describe the node but it will not be displayed).
                    // ---------------------------------------------------------------------------------------------------- 
                        else if (hasNote && !hasLink) {
                            sTag = aName + S_BOX
                            eTag = E_BOX
                            iText = rNote
                            if (MARKDOWN) {
                                // If the note has some html tags (except pre) then it will become a blockquote 
                                    if (iText =~ /$NOTE_IS_HTML/)
                                        mdStr += '> ' + iText.replaceAll('\n', '\n> ') + EOL
                                // Other it will be code
                                    else
                                        mdStr += "```$EOL" + iText + "$EOL```$EOL$EOL"
                            }
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
                    if (hasDetails) {
                        //htmlStr += indentSp + indentNbsp + aName + '<small style="' + STYLE_DET + '"><i>(' + details + ')</i></small><br>' + EOL
                        htmlStr += indentSp + indentNbsp + '<small style="' + STYLE_DET + '"><i>(' + details + ')</i></small><br>' + EOL

                        if (MARKDOWN)
                            mdStr += "*($details)*$EOL$EOL"
                    }

                // ====================================================================================================
                // = Attributes: Add as a table if any
                // ==================================================================================================== 
                    // s0 Try to add spaces before the tables... it doesn't work if I just add indentNbsp http://stackoverflow.com/questions/29046021/apply-space-character-before-table-in-html
                    if (n.attributes.size() > 0) {
                        def tableStr = indentSp + '<table style="' + STYLE_ATTR_TAB + '">' + EOL
                        def mdTableStr = "| | |$EOL"
                        mdTableStr += "|---|---|$EOL"
                        // Loop the attributes and create a row with 2 cells for each
                            n.attributes.names.each { attributeName ->
                                //attributeValue = n.attributes.get(attributeIndex)
                                attributeValue = n[attributeName]
                                tableStr += indentSp + '<tr>' + EOL
                                tableStr += indentSp + '<td style="' + STYLE_ATTR_CELL + '">' + attributeName + '</td>' + EOL
                                tableStr += indentSp + '<td style="' + STYLE_ATTR_CELL + '">' + attributeValue + '</td>' + EOL
                                tableStr += indentSp + '</tr>' + EOL
                                if (MARKDOWN)
                                    mdTableStr += "| $attributeName | $attributeValue |$EOL"  
                            }
                        tableStr += indentSp + '</table><br>' + EOL
                        htmlStr += tableStr
                        if (MARKDOWN)
                            mdStr += mdTableStr
                    }

                // ====================================================================================================
                // = Connectors: Add as links if any 
                // ==================================================================================================== 
                    // · Connectors
                        // · In
                            def connectorsInList = ''
                            def mdConnectorsInList = ''
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
                                    it.source.pathToRoot.each { it2 -> pathToNode += '/' + truncateText(it2.plainText, SHORT_TEXT_MAX_SIZE, true, false) }
                                // Add the connector to the text list
                                    connectorsInList += indentSp + indentNbsp + '<small><a href="#' + it.source.id + '">< ' + it.source.plainText + '</a></small>'
                                    if (MARKDOWN)
                                        mdConnectorsInList += "[$it.source.plainText](#$it.source.id)"
                                    if (SHOW_CONNECTOR_DETAILS) {
                                        connectorsInList += ' <i><small>This section' + tLabel + '<---' + mLabel + sLabel + it.source.plainText + '{' + pathToNode + '}</small></i><br>' + EOL
                                        if (MARKDOWN)
                                            mdConnectorsInList += ' *This section' + tLabel + '<---' + mLabel + sLabel + it.source.plainText + '{' + pathToNode + "}*$EOL$EOL"
                                    }
                                    else {
                                        connectorsInList += '<br>' + EOL
                                        if (MARKDOWN)
                                            mdConnectorsInList += "$EOL$EOL"
                                    }
                            }
                            htmlStr += connectorsInList
                            if (MARKDOWN)
                                mdStr += mdConnectorsInList
                        // · Out
                            def connectorsOutList = ''
                            def mdConnectorsOutList = ''
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
                                    it.target.pathToRoot.each { it2 -> pathToNode += '/' + truncateText(it2.plainText, SHORT_TEXT_MAX_SIZE, true, false) }
                                // Add the connector to the text list
                                    connectorsOutList += indentSp + indentNbsp + '<small><a href="#' + it.target.id + '">> ' + it.target.plainText + '</a></small>'
                                    if (MARKDOWN)
                                        mdConnectorsOutList += "[$it.target.plainText](#$it.target.id)"
                                    if (SHOW_CONNECTOR_DETAILS) {
                                         connectorsOutList += ' <i><small>This section' + sLabel + mLabel+ '--->'  + tLabel + it.target.plainText + '{' + pathToNode + '}</small></i><br>' + EOL
                                        if (MARKDOWN)
                                            mdConnectorsOutList += ' *This section' + sLabel + mLabel+ '--->'  + tLabel + it.target.plainText + '{' + pathToNode + "}*$EOL$EOL"
                                    }
                                    else {
                                        connectorsOutList += '<br>' + EOL
                                        if (MARKDOWN)
                                            mdConnectorsOutList += "$EOL$EOL"
                                    }
                            }
                            htmlStr += connectorsOutList
                            if (MARKDOWN)
                                mdStr += mdConnectorsOutList

            if (LARGE_MAP_USE_FILE) {
                htmlFileTmp.append(htmlStr, 'utf-8') // Append the chunck to the temp file.
                htmlStr = '' // Reset the string for the next chunk appended.
                if (MARKDOWN) {
                    mdFileTmp.append(mdStr, 'utf-8') // Append the chunck to the temp file.
                    mdStr = '' // Reset the string for the next chunk appended.
                }
            }
        } // End - c.findAll().each...

    // ====================================================================================================
    // = Create/update the html/markdown file
    // ==================================================================================================== 
        // Append the closing tags
            htmlStr += '</body></html>'
        // Open the final output file
            def htmlFile = new File(OUT_DIR + OUT_FILENAME)
            // Markdown
                def mdFile = null
                if (MARKDOWN)
                    mdFile = new File(OUT_DIR + MD_OUT_FILENAME)
        // Put the content of the temp file to the final html doc file by looping line by line and replace the TOC 
            if (LARGE_MAP_USE_FILE) {
                    htmlFileTmp.append(htmlStr, 'utf-8')
                    htmlFile.delete() // Make sure it is deleted because we append to it.
                    if (MARKDOWN) {
                        mdFileTmp.append(mdStr, 'utf-8')
                        mdFile.delete() // Make sure it is deleted because we append to it.
                    }
                // Loop the lines in the temp files and for each, try to replace for the table of content.
                    // ····································································································
                    // · HTML
                    // ···································································································· 
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
                    // ····································································································
                    // · Markdown
                    // ···································································································· 
                        if (MARKDOWN) {
                            replace = false
                            mdFileTmp.each { String line ->
                                if (!replaced) { // Check if the TOC is replaced already, if not then...
                                    // s0 This contains dosen't see the @@TOC@@ at the moment for some reason, fix that
                                    if (line.contains('@@TOC@@')) { // Check if the TOC is on the current line...
                                        if (SHOW_TOC) // If we want to show the TOC then add it by a replacement
                                            line = line.replace('@@TOC@@', mdToc) 
                                        else
                                            line = line.replace('@@TOC@@', '') // No TOC
                                        replaced = true // Set the flag to tell it is replaced and no need to check for the TOC anymore. 
                                    }
                                }
                                mdFile.append(line + EOL)
                            }
                        }
                        // Delete the temp file
                            mdFileTmp.delete()
            }
        // If memory (string) was used to keep the document
            else { 
                // Add the table of contents
                if (SHOW_TOC) {
                    htmlStr = htmlStr.replace('@@TOC@@', S_TOC + toc + tocIndent + E_TOC) 
                    if (MARKDOWN)
                        mdStr = mdStr.replace('@@TOC@@', mdToc) 
                }
                else {
                    htmlStr = htmlStr.replace('@@TOC@@', '') 
                    if (MARKDOWN)
                        mdStr = mdStr.replace('@@TOC@@', '') 
                }
                htmlFile.write(htmlStr, 'utf-8')
                if (MARKDOWN)
                    mdFile.write(mdStr, 'utf-8')
            }
			
		// Copy the file to a file with the name of the map. This will allow to export multiple files and have them linked together.
            try {
                File outFile = new File(OUT_DIR + OUT_FILENAME);
                File mapFile = new File(OUT_DIR + branchRootName + '.html');
                FileUtils.copyFile(outFile, mapFile);
                if (MARKDOWN) {
                    File mdOutFile = new File(OUT_DIR + MD_OUT_FILENAME);
                    File mdMapFile = new File(OUT_DIR + branchRootName + '.md');
                    FileUtils.copyFile(mdOutFile, mdMapFile);
                }
            } catch(Exception e) {}

        m("HTML document saved as '" + OUT_DIR + OUT_FILENAME + "' and to '" + OUT_DIR + branchRootName + '.html' + "'.")
        if (MARKDOWN)
            m("Markdown document saved as '" + OUT_DIR + MD_OUT_FILENAME + "' and to '" + OUT_DIR + branchRootName + '.md' + "'.")

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
