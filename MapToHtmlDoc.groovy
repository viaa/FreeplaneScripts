// @ExecutionModes({ON_SELECTED_NODE})

// Copyright (C) Alexandre Viau, 2021
// License: Apache 2.0 License

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//                                Apache License
//                            Version 2.0, January 2004
//                         http://www.apache.org/licenses/
// 
// TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION
// 
// 1. Definitions.
// 
// "License" shall mean the terms and conditions for use, reproduction,
// and distribution as defined by Sections 1 through 9 of this document.
// 
// "Licensor" shall mean the copyright owner or entity authorized by
// the copyright owner that is granting the License.
// 
// "Legal Entity" shall mean the union of the acting entity and all
// other entities that control, are controlled by, or are under common
// control with that entity. For the purposes of this definition,
// "control" means (i) the power, direct or indirect, to cause the
// direction or management of such entity, whether by contract or
// otherwise, or (ii) ownership of fifty percent (50%) or more of the
// outstanding shares, or (iii) beneficial ownership of such entity.
// 
// "You" (or "Your") shall mean an individual or Legal Entity
// exercising permissions granted by this License.
// 
// "Source" form shall mean the preferred form for making modifications,
// including but not limited to software source code, documentation
// source, and configuration files.
// 
// "Object" form shall mean any form resulting from mechanical
// transformation or translation of a Source form, including but
// not limited to compiled object code, generated documentation,
// and conversions to other media types.
// 
// "Work" shall mean the work of authorship, whether in Source or
// Object form, made available under the License, as indicated by a
// copyright notice that is included in or attached to the work
// (an example is provided in the Appendix below).
// 
// "Derivative Works" shall mean any work, whether in Source or Object
// form, that is based on (or derived from) the Work and for which the
// editorial revisions, annotations, elaborations, or other modifications
// represent, as a whole, an original work of authorship. For the purposes
// of this License, Derivative Works shall not include works that remain
// separable from, or merely link (or bind by name) to the interfaces of,
// the Work and Derivative Works thereof.
// 
// "Contribution" shall mean any work of authorship, including
// the original version of the Work and any modifications or additions
// to that Work or Derivative Works thereof, that is intentionally
// submitted to Licensor for inclusion in the Work by the copyright owner
// or by an individual or Legal Entity authorized to submit on behalf of
// the copyright owner. For the purposes of this definition, "submitted"
// means any form of electronic, verbal, or written communication sent
// to the Licensor or its representatives, including but not limited to
// communication on electronic mailing lists, source code control systems,
// and issue tracking systems that are managed by, or on behalf of, the
// Licensor for the purpose of discussing and improving the Work, but
// excluding communication that is conspicuously marked or otherwise
// designated in writing by the copyright owner as "Not a Contribution."
// 
// "Contributor" shall mean Licensor and any individual or Legal Entity
// on behalf of whom a Contribution has been received by Licensor and
// subsequently incorporated within the Work.
// 
// 2. Grant of Copyright License. Subject to the terms and conditions of
// this License, each Contributor hereby grants to You a perpetual,
// worldwide, non-exclusive, no-charge, royalty-free, irrevocable
// copyright license to reproduce, prepare Derivative Works of,
// publicly display, publicly perform, sublicense, and distribute the
// Work and such Derivative Works in Source or Object form.
// 
// 3. Grant of Patent License. Subject to the terms and conditions of
// this License, each Contributor hereby grants to You a perpetual,
// worldwide, non-exclusive, no-charge, royalty-free, irrevocable
// (except as stated in this section) patent license to make, have made,
// use, offer to sell, sell, import, and otherwise transfer the Work,
// where such license applies only to those patent claims licensable
// by such Contributor that are necessarily infringed by their
// Contribution(s) alone or by combination of their Contribution(s)
// with the Work to which such Contribution(s) was submitted. If You
// institute patent litigation against any entity (including a
// cross-claim or counterclaim in a lawsuit) alleging that the Work
// or a Contribution incorporated within the Work constitutes direct
// or contributory patent infringement, then any patent licenses
// granted to You under this License for that Work shall terminate
// as of the date such litigation is filed.
// 
// 4. Redistribution. You may reproduce and distribute copies of the
// Work or Derivative Works thereof in any medium, with or without
// modifications, and in Source or Object form, provided that You
// meet the following conditions:
// 
// (a) You must give any other recipients of the Work or
// Derivative Works a copy of this License; and
// 
// (b) You must cause any modified files to carry prominent notices
// stating that You changed the files; and
// 
// (c) You must retain, in the Source form of any Derivative Works
// that You distribute, all copyright, patent, trademark, and
// attribution notices from the Source form of the Work,
// excluding those notices that do not pertain to any part of
// the Derivative Works; and
// 
// (d) If the Work includes a "NOTICE" text file as part of its
// distribution, then any Derivative Works that You distribute must
// include a readable copy of the attribution notices contained
// within such NOTICE file, excluding those notices that do not
// pertain to any part of the Derivative Works, in at least one
// of the following places: within a NOTICE text file distributed
// as part of the Derivative Works; within the Source form or
// documentation, if provided along with the Derivative Works; or,
// within a display generated by the Derivative Works, if and
// wherever such third-party notices normally appear. The contents
// of the NOTICE file are for informational purposes only and
// do not modify the License. You may add Your own attribution
// notices within Derivative Works that You distribute, alongside
// or as an addendum to the NOTICE text from the Work, provided
// that such additional attribution notices cannot be construed
// as modifying the License.
// 
// You may add Your own copyright statement to Your modifications and
// may provide additional or different license terms and conditions
// for use, reproduction, or distribution of Your modifications, or
// for any such Derivative Works as a whole, provided Your use,
// reproduction, and distribution of the Work otherwise complies with
// the conditions stated in this License.
// 
// 5. Submission of Contributions. Unless You explicitly state otherwise,
// any Contribution intentionally submitted for inclusion in the Work
// by You to the Licensor shall be under the terms and conditions of
// this License, without any additional terms or conditions.
// Notwithstanding the above, nothing herein shall supersede or modify
// the terms of any separate license agreement you may have executed
// with Licensor regarding such Contributions.
// 
// 6. Trademarks. This License does not grant permission to use the trade
// names, trademarks, service marks, or product names of the Licensor,
// except as required for reasonable and customary use in describing the
// origin of the Work and reproducing the content of the NOTICE file.
// 
// 7. Disclaimer of Warranty. Unless required by applicable law or
// agreed to in writing, Licensor provides the Work (and each
// Contributor provides its Contributions) on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
// implied, including, without limitation, any warranties or conditions
// of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A
// PARTICULAR PURPOSE. You are solely responsible for determining the
// appropriateness of using or redistributing the Work and assume any
// risks associated with Your exercise of permissions under this License.
// 
// 8. Limitation of Liability. In no event and under no legal theory,
// whether in tort (including negligence), contract, or otherwise,
// unless required by applicable law (such as deliberate and grossly
// negligent acts) or agreed to in writing, shall any Contributor be
// liable to You for damages, including any direct, indirect, special,
// incidental, or consequential damages of any character arising as a
// result of this License or out of the use or inability to use the
// Work (including but not limited to damages for loss of goodwill,
// work stoppage, computer failure or malfunction, or any and all
// other commercial damages or losses), even if such Contributor
// has been advised of the possibility of such damages.
// 
// 9. Accepting Warranty or Additional Liability. While redistributing
// the Work or Derivative Works thereof, You may choose to offer,
// and charge a fee for, acceptance of support, warranty, indemnity,
// or other liability obligations and/or rights consistent with this
// License. However, in accepting such obligations, You may act only
// on Your own behalf and on Your sole responsibility, not on behalf
// of any other Contributor, and only if You agree to indemnify,
// defend, and hold each Contributor harmless for any liability
// incurred by, or claims asserted against, such Contributor by reason
// of your accepting any such warranty or additional liability.

// ####################################################################################################
// # Version History:
// #################################################################################################### 
        // Version 2019-05-29_07-20-30
            // I reactivated the details and connectors, the code to show them was commented out. 
        // Version 2018-12-25_12-21-03
            // I changed the spacing between the toc items: <p> was used to separate them, I removed it and just used <br>
        // Version 2018-08-31_19:42:26
            // I added a workaround for confluence, there is a problem displaying one of the separators... so I remove it when there is the rootUrl (for now). I will try to fix that.
        // Version 2018-08-31_13.53.36
            // Did several char fixes to make the basic functionalities (toc, breadcrumbs, images) work when html imported in Confluence.
        // Version 2018-08-30_19.50.53
            // Added support for RootUrl. This allows to put the images somewhere on the web and then when the html doc will be generated the images paths (directories) will be changed to the RootUrl specified. This allows to have the images somewhere online instead of locally, but the images should first be generated locally then copied online, and then the RootUrl should be added to the root node. 
        // Version 2018-08-30_19.32.37
            // The attributes won't show for the root node. 
        // Version 2018-08-28_16.27.49
            // Changed the table of content <pre> by a <div> and changed the indentation by &nbsp; in the toc instead of spaces, and changed added the variable indentNbsp. 
        // Version 2018-04-12_10.27.52
            // Added: Changed "if (link =~ /(txt|log|sh|groovy|vim|ini)$/)" for "if (!hasUrlLink && link =~ /(txt|log|sh|groovy|vim|ini)$/)" because the script tried to read files with extensions from disk when they was on the web.
        // Version 2018-04-11_17.16.37
            // Fixed: If the first nodes were nodes that are ignored, then a < was added in the breadcrumb of the first section and clicking it was doing nothing as the ignored content is not shown in the html doc. 
        // Version 2018-04-07_08.18.03
            // I changed the > and < in connectors labels to their corresponding html entities.
        // Version 2018-02-16_05.48.05
            // Changed the possibility of changing node levels by adding a specific icon with a number to the node: Now it is possible to put the number 5, so this is useful if you want to display a node that is an image but that is in the level of a title in the map. 
        // Version 2018-01-26_16.45.55
            // Changed variable for video link url to showVideoEmbedded variable, and now to have a video appear has embedded in the html document created the user should add the video icon to the link. This will avoid to have too many embedded videos in a page which slows down the page loading/rendering.
            // Moved a verification for the red x up before the check for embedded video, to make the iconText available before.
        // Version 2018-01-17_16.58.30
            // Added a new variable rHtml, to distinguish rawtext from rawhtml. Raw text is text without any tags, raw html is the html extracted from a node text (without the html and body tags and enclosing paragraph.
            // List items (nodes starting with * are now replaced by the bullet char instead of the <li> tag, this allows indentation of list item)
            // The rawText() function now removes the <b> tag, this was necessary to have text starting with '* ' in bold to be detected as a list item (as starting with '* ' so '* ' can be replaced by the bullet char.
        // Version 2018-01-03_15.25.02
            // I reactivated the upload to github as the shell script has been corrected.
        // Version 2017-12-29_11.29.27
            // Upload to GitHub deactivated for now because the shell script should be fixed. 
            // Added the possibility to add videos that have the address m.youtube.com instead of www.youtube.com.
            // Added text to the input box to tell how to focus to the textbox using only the keyboard.
        // Version 2017-12-18_14.13.50
            // Added more short link text for connectors. 
        // Version 2017-12-07_10.30.58
            // I removed the formatting of font-size and font-family for the table of content items. So they will have only color, backgroundcolor and bold etc.
        // Version 2017-12-07_01.51.13 
            // Removed the cssStyle variable and the pre-rendering of each node style to css that was not needed. Only the node with the pencil icon will be pre-rendered. 
        // Version 2017-12-07_01.29.47 
            // Started to add the ability to format nodes using the toolbar and the format panel, these styles will be rendered as CSS in the output document.
            // Overwrite if exists is now set to true, so the images and files will be overwritten in the OUT_DIR if they exists there already. This takes more time but is useful if the linked files and images are updated frequently.
            // Corrected the replacement of spaces in linked images and files. Will not be replaced by _ 
        // Version 2017-12-06_17.46.20
            // Added the possibility to add links to list item (<li>) 
        // Version 2017-11-30_18.10.20
            // I added a sub directory to the temp directory because some files not related with the document in that temp dir were uploaded to github...
        // Version 2017-11-30_14.08.07
            // Added the replacement of \n by _ in the truncate function, because this was causing path errors.
        // Version 2017-11-30_00.34.15
            // Added proc.waitFor() so that the script will wait for the shell script to terminate before to delete the .sh file created.
            // Added the obligation to have the 'executable' icon on the root branch node to have it's script executed.
            // The html from the shell script note is stripped using rawNote() instead of htmlUtils. The script in the note has to be inside a <pre> </pre> tags.
        // Version 2017-11-29_20.21.36
            // Modified BASH_PATH code.
        // Version 2017-11-29_20.01.49
            // Add code to upload the document to the web (github pages and ftp).
        // Version 2017-11-29_17.24.45
            // Added code to detect the operating system and set the paths accordingly. Not tested on mac or linux.
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
    // Prompt (input box)
        import javax.swing.*
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
// # Pre-Initialization
// #################################################################################################### 

    // ====================================================================================================
    // = Get operating system
    // ==================================================================================================== 
        String OS = System.getProperty("os.name").toLowerCase();
        String os = ''
        if (OS.contains("win"))
            os = 'windows'
        else if (OS.contains("mac"))
            os = 'mac'
        else if (OS =~ /nix|nux|aix/)
            os = 'unix'
        else
            os = 'other'

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
        def BOL = "<br>$EOL"
        def TAB = 3 // Number of space in a "TAB"
        def TAB_CHR_SP = ' ' // The caracter used to indent in the source html 
        def TAB_CHR_NBSP = '&nbsp;' // The caracter used to indent as displayed on screen

        def LARGE_MAP_USE_FILE = false // If the map is large there may be memory issues, so set this to true so that the script will use a file instead of the memory. Note that it is much faster when this is set to false, so set it to false for small maps.

        def CHANGE_DEPTH_ICON = 'Dark-'
        def CSS_STYLE_ICON = 'pencil' // It is the red pencil, if a node has this icon its style properties will become css style properties in the output html 

        // Html doc paths
            @Field def OUT_DIR = ''
            if (os == 'windows')
                OUT_DIR = 'c:/Temp/Mthd/'
            else
                OUT_DIR = '/tmp/Mthd/'
            def OUT_FILENAME = 'out.html'
            def OUT_TMP_FILENAME = 'outtmp.html'
           // Markdown
                def MD_OUT_FILENAME = 'out.md'
                def MD_OUT_TMP_FILENAME = 'outtmp.md'

        // Paths
            def USER_PATH = ''
            if (os == 'windows')
                USER_PATH = 'C:/Users/' + System.getProperty("user.name") + '/AppData/Roaming/Freeplane/1.8.x/'
            else // if (os == 'mac')
                USER_PATH = System.getProperty("user.home") + '/.freeplane/1.6.x/'
            def ICONS_PATH = USER_PATH + 'icons/'
            def LIB_PATH = USER_PATH + 'lib/' 

            // Define bash path depending on the operating system
            def BASH_PATH = ''
                if (os == 'windows')
                    BASH_PATH = 'D:\\Projects\\Tools\\PortableGit\\git-bash.exe'
                else // Linux, Mac
                    BASH_PATH = 'bash'

        // For connectors
            @Field def SHORT_TEXT_MAX_SIZE = 25 // Number of chars to display in the ShortText field
            def SHOW_CONNECTOR_DETAILS = true

        // For breadcrumbs
            def ADD_H2_BREADCRUMBS = true
            def ADD_H3_BREADCRUMBS = true
            def ADD_H4_BREADCRUMBS = false
    
        // For Markdown (enable export to Markdown, .md files will be also create with the .html files)
            @Field def MARKDOWN = true
            def NOTE_IS_HTML = '<b>|<a href|<i>|<small>|<font' // To identify that a note contains html (to select the display method for the markdown notes: bloquote or code)

		// To copy files or images to the output directory
			def COPY_FILES_TO_OUT_DIR = true
			def COPY_IMAGES_TO_OUT_DIR = true // The images that are link from anywhere on disks will be copied in the output directory and linked in the html and markdown files from there.
            @Field def OVERWRITE_IF_EXISTS = true // If the images or files exists already they will be overwritten if set to true, so copied again everytime.

        // Attributes of the root node
            // If there is a rootUrl, then the images will have it in their path instead of the local folder, the filename will be the same. So basically the file will then have images that are on an online website instead of locally, the RootUrl specifies where on the web are stored the images with the same name.
                def rootUrl = ''
                if (attributes['RootUrl'] != null) // s0 Do better check here
                    rootUrl = attributes['RootUrl'].toString() // s0 Check why I need to do .toString() here

        // ----------------------------------------------------------------------------------------------------
        // - Styles
        // ---------------------------------------------------------------------------------------------------- 

            // ····································································································
            // · Separators
            // ···································································································· 
                def STYLE_SEP_COLOR = '#C3C3C3;'
                def SEP1 = '<hr align="left" style="border-top: 1px solid #000000; width:100%;">' // Separator for h1
                // SEP2
                    def SEP2 = '<hr align="left" style="border-top: 3px double #0033FF; width:100%;">' // Separator for h2
                // SEP3 
                    def SEP3 = '<hr align="left" style="border-top: 1px solid #00B439; width:100%;">' // Separator for h3
                // SEP4
                    def SEP4 = '' // Separator for h4

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
            def S_TOC = SEP1 + '<h2><a name="toc">Table of contents</a></h2><div style="' + STYLE_TOC + '">' + EOL
            def E_TOC = '</div>' + EOL
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
        def runBranchRootScript = false
        def text = ''
        def rText = '' // Raw text
        def rHtml = '' // Raw html
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
        def passwordPrompt(label) { // = Input box for password
        // ==================================================================================================== 
            JLabel jPassword = new JLabel(label)
            JTextField password = new JPasswordField()
            Object[] ob = [jPassword, password]
            int result = JOptionPane.showConfirmDialog(null, ob, "Password", JOptionPane.OK_CANCEL_OPTION)
            String passwordValue = ''
            if (result == JOptionPane.OK_OPTION)
                passwordValue = password.getText()
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
        def rawHtml(text, removeStatus) { // = To get only the main html in the nodes without some structural html and the status.
        // Function copied to GroovyLib.groovy
        // ==================================================================================================== 
            // Remove html tags
                def rawHtml = text.replaceAll('<(html|head|body|p|span).*?>', '')
                rawHtml = rawHtml.replaceAll('</(html|head|body|p|span)>', '')
                rawHtml = rawHtml.replaceAll('^\\s*', '')
            // Remove the status
                if (removeStatus)
                    rawHtml = rawHtml.replaceAll('(s-1|s0|s1|s2|s3)( |&nbsp;)', '')
            // Allows to add end of lines to nodes, so add $$ to have a end of line in the text of the node. It could be possible to have end of lines in core text, but freeplane set automatically end of lines to wrap the nodes, and these appear in the html... so I have no way of differenciating my own end of lines with those of FP...
                rawHtml = rawHtml.replaceAll('\\$\\$', '<br>')
            return rawHtml.trim()
            }
            
            // ====================================================================================================
            def removeHtmlFormatting(text) { // = To remove formatting tags from the html
            // ==================================================================================================== 
                // Remove html formatting
                    def rawText = text.replaceAll('<(b).*?>', '')
                    rawText = rawText.replaceAll('</(b)>', '')
                return rawText
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
                    rawNote = rawNote.replaceAll('&quot;', '"')
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
                text = text.replaceAll('<|>|:|"|/|\\\\|\\||\\?|\\*| |&|\\n', '_').replaceAll('_+', '_') // Then replace multiple _ by only one.
            // Double the apostrophes so there is no issue inserting the strings in the database
                // text = text.replaceAll("'", "''")
            return text
        }

        // ====================================================================================================
        def getFileFromPath(path) { // = This function was created because there is an issue using for example FileUtils with spaces in paths 
        // ==================================================================================================== 
			path = path.replace('file:/', ' ')
			path = path.replaceAll("\\u0020", '%20')
            def driveLetter = path.substring(0, 2) // For some reason uri.getPath() returns no drive letter so it is kept here
                URI uri = new URI(path.trim())
                File file = new File(driveLetter + uri.getPath())
            // s0 Check this double return it is strange
			return file
            return ''
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
                destFilename = destFilename.replaceAll('%20| ', '_').replaceAll('_+', '_') // Replace the spaces (single or multiple) by _ 
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
            //breadcrumbs = '<i><small>'
            breadcrumbs = '<small>'
            def branchRootNodeLevel = branchRootNode.getNodeLevel(false) + 1
            // ----------------------------------------------------------------------------------------------------
            // - Add breadcrumbs
            // ---------------------------------------------------------------------------------------------------- 
                currentNode.pathToRoot.eachWithIndex { it, idx -> 
                    // Don't make the breadcrumbs for the node before the branchRoot
                        def currentDepth = it.getNodeLevel(false) + 1
                        if (currentDepth < branchRootNodeLevel)
                            return
                    // ····································································································
                    // · Name: Get the name of the breadcrumb
                    // ···································································································· 
                        // First one
                            if (currentDepth == branchRootNodeLevel) {
                                breadcrumbName = 'Table of contents'
                                if (MARKDOWN)
                                    mdBreadcrumbs += " / [$breadcrumbName](#$it.id)" 
                            }
                        // Others
                            else
                                breadcrumbName = truncateText(it.plainText, SHORT_TEXT_MAX_SIZE, true, false)
                    // ····································································································
                    // · Links: Add the breadcrumbs
                    // ···································································································· 
                        // Last: If it is the last breadcrumb then don't add a link
                            if (idx == currentNode.pathToRoot.size() - 1) {
                                breadcrumbs += '&nbsp;&#47;&nbsp;' + breadcrumbName
                                if (MARKDOWN)
                                    mdBreadcrumbs += " / $breadcrumbName" 
                            }
                        // Others: For other breadcrumbs (not the last) add a link
                            else {
                                breadcrumbs += '&nbsp;&#47;&nbsp;' + '<a href="#' + it.id + '">' + breadcrumbName + '</a>' 
                                if (MARKDOWN)
                                    mdBreadcrumbs += " / [$breadcrumbName](#$it.id)" 
                            }
                }
            if (MARKDOWN)
                mdBreadcrumbs = mdBreadcrumbs.drop(1)
            // ----------------------------------------------------------------------------------------------------
            // - Add previous and next links before and after the breadcrumbs
            // ---------------------------------------------------------------------------------------------------- 
                // ····································································································
                // · Previous
                // ···································································································· 
                    // s0 It is this here that cause the [ char in the sections and the #ID_ text in the breadcrumbs, check why.
                    if (previousNode != null) {
                        if (!ignoreNode(previousNode)) {
                            breadcrumbs = '&#8203;<a href="#' + previousNode.id + '">&lt;</a>&nbsp;' + breadcrumbs // Don't remove the leading invisible char because it prevents display issue with breadcrumbs in confluence.
                            if (MARKDOWN)
                                mdBreadcrumbs = "[<](#$previousNode.id)$mdBreadcrumbs"
                        }
                    }
                // ····································································································
                // · Next
                // ···································································································· 
                    if (nextNode != null) {
                        breadcrumbs += '&nbsp;<a href="#' + nextNode.id + '">&gt;</a>'
                        //if (MARKDOWN)
                            //mdBreadcrumbs += "[>](#$nextNode.id)"
                    }
            //breadcrumbs += '</small></i><br>'
            breadcrumbs += '</small><br>'
            //d(breadcrumbs)
            breadcrumbsArr = [breadcrumbs, mdBreadcrumbs] // Return both breadcrumbs strings as an array because java/groovy don't have out parameters
            return breadcrumbsArr
        }

        // ====================================================================================================
        def getStyledTextWithCss(pNode, rText, isToc) { // = Returns the text of a node styled with CSS from the nodes properties. rText is the rawText.
        // ==================================================================================================== 
            def cssStyle = ''
            if (!isToc) {
                cssStyle += "font-family: '" + pNode.style.font.name + "';"
                cssStyle += 'font-size: ' + pNode.style.font.size + 'px;'
            }
            // Font-weight
                if (node.style.font.bold)
                    cssStyle += 'font-weight: bold;'
                else
                    cssStyle += 'font-weight: normal;'
            if (pNode.style.font.italic)
                cssStyle += 'font-style: italic;'
            cssStyle += 'color: ' + pNode.style.textColorCode + ';'
            if (pNode.style.backgroundColorCode != null)
                cssStyle += 'background-color: ' + pNode.style.backgroundColorCode + ';'
            return '<span style="' + cssStyle + '">' + rText + '</span>'
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
                    // - If icon is the red x then dont include this node
                    // ---------------------------------------------------------------------------------------------------- 
                        iconsText = n.icons.collect{it.toString()}.join(';')
                        if (iconsText =~ '(^|;)(button_cancel)')
                            return
               
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
                        rHtml = rawHtml(text, false)
                        rText = removeHtmlFormatting(rHtml)

                    // ----------------------------------------------------------------------------------------------------
                    // - Link
                    // ---------------------------------------------------------------------------------------------------- 
                        link = ''
                        hasLink = false
                            hasUrlLink = false
                            hasFileLink = false
                            hasFolderLink = false
                            showVideoEmbedded = false
                        if (n.link.text != null) { // There is a link
                            hasLink = true
                            link = n.link.text
                            if (link =~ /http/) { // Is URL
                                hasUrlLink = true
                                if (link =~ /youtube|youtu\.be/ && iconsText =~ '(^|;)(video)') // Is a video and to display as embedded 
                                    showVideoEmbedded = true
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
                        if (rHtml =~ /^(s-1|s0|s1|s2|s3)\s/)
                            return

            // BranchRoot: Set the current selected node when the script is run as the branchRoot node (it is set only once) 
                if (branchRootNode == null) {
                    branchRootNode = n
                    branchRootName = truncateText(rHtml, SHORT_TEXT_MAX_SIZE, false, true)  // I use truncateText but really it was meant for another usage.
                    // If the root node has a note (script?) + the icon 'Executable' then it is a script to run at the end 
                        if (branchRootNode.noteText != null && n.icons.collect{it.toString()}.join(';').contains('executable'))
                            runBranchRootScript = true
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
                    else if (iconsText.contains(CHANGE_DEPTH_ICON + '5'))
                        depth = 5

                // ----------------------------------------------------------------------------------------------------
                // - Set indentation
                // ---------------------------------------------------------------------------------------------------- 
                    indentSp = TAB_CHR_SP.multiply(depth * TAB) // Add indentation according to the depth level 
                    indentNbsp = TAB_CHR_NBSP.multiply(depth * TAB) // Add indentation according to the depth level 
                    if (depth > 4)
                        indentNbspPara = TAB_CHR_NBSP.multiply((depth - 4) * TAB) // Add indentation according to the depth level for the paragraphs, if a node is a child of paragraph it will appear indended under.
                    else
                        indentNbspPara = ''

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

                if (n.icons.collect{it.toString()}.join(';') =~ '(^|;)(pencil)') { // Icons with the red pencil will be styled using CSS 
                    iText = getStyledTextWithCss(n, rHtml, false)
                    iTextToc = getStyledTextWithCss(n, rHtml, true)
                }
                else {
                    iText = rHtml
                    iTextToc = iText
                }

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
                            if (!(iconName =~ /$CHANGE_DEPTH_ICON|$CSS_STYLE_ICON/)) { // Ignore the icons that are the icons used to change the depth or the CSS icon (don't show them).
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
                            mdStr += "# $aName$iText$EOL"
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
                        if (rHtml != '' ) {
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
                                sTag += BOL + indentSp + SEP2 + '<h2 style="' + STYLE_H2 + '">' + aName
                            eTag = '</h2>' + EOL + breadcrumbs // + TOC_BACK_LINK
                            //toc += indentSp + '&#8226; ' + ' <big><a style="' + STYLE_H2 + '" href="#' + id + '">' + iTextToc + '</a></big> ' + iconsHtml + EOL
                            // toc += '<p>' + indentNbsp + '&#8226; ' + ' <big><a style="' + STYLE_H2 + '" href="#' + id + '">' + iTextToc + '</a></big> ' + iconsHtml + '</p>' + EOL
                            toc += indentNbsp + '&#8226; ' + ' <big><a style="' + STYLE_H2 + '" href="#' + id + '">' + iTextToc + '</a></big> ' + iconsHtml + BOL

                            if (MARKDOWN) {
                                mdStr += "***$EOL"
                                mdStr += "## $aName$iconsMd$rHtml$EOL"
                                mdStr += "***$EOL"
                                if (ADD_H2_BREADCRUMBS)
                                    mdStr += "*$breadcrumbs*$EOL$EOL"
                                mdToc += "* **[$rHtml](#$id)** $iconsMd$EOL" // TOC: List element
                            }
                        }
                        // If H2's rHtml is empty then add an empty line
                            else
                                sTag += BOL
                    }

                // ----------------------------------------------------------------------------------------------------
                // - H3
                // ---------------------------------------------------------------------------------------------------- 
                    else if (depth == 3) {
                        if (rHtml != '') {
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
                            // s0 Even this is causing a ---- in confluence so use this workaround for now until I fix this: <html><body>allo<hr></body></html>
                                // s0 Maybe try to insert a hr in confluence then view source and do like that if there is a rootUrl
                                if (rootUrl == '')
                                    sTag = EOL + indentSp + SEP3 + '<h3 style="' + STYLE_H3 + '">' + aName
                                else
                                    sTag = EOL + indentSp + '<h3 style="' + STYLE_H3 + '">' + aName // This is a workaround, I remove the separator because in confluence it adds ---- insead of a line I don't know why. 
                                eTag = '</h3>' + EOL + breadcrumbs + EOL
                            //eTag = '</h3>' + EOL + breadcrumbs + EOL
                            // toc += indentSp + '&#9675; ' + ' <a style="' + STYLE_H3 + '" href="#' + id + '">' + iTextToc + '</a> ' + iconsHtml + EOL
                            // toc += '<p>' + indentNbsp + '&#9675; ' + ' <a style="' + STYLE_H3 + '" href="#' + id + '">' + iTextToc + '</a> ' + iconsHtml + '</p>' + EOL
                            toc += indentNbsp + '&#9675; ' + ' <a style="' + STYLE_H3 + '" href="#' + id + '">' + iTextToc + '</a> ' + iconsHtml + BOL

                            if (MARKDOWN) {
                                mdStr += "### $aName$iconsMd$rHtml$EOL"
                                mdStr += "---$EOL"
                                if (ADD_H3_BREADCRUMBS)
                                    mdStr += "*$mdBreadcrumbs*$EOL$EOL"
                                mdToc += '  * ' + "[$rHtml](#$id) $iconsMd$EOL" // TOC: List element
                            }
                        }
                        // If H3's rHtml is empty then maybe add an empty line
                            else
                                // If parent was not empty but this node is empty, then add empty line
                                    if (rawHtml(n.parent.text, false) != '')
                                        sTag += BOL
                    }

                // ----------------------------------------------------------------------------------------------------
                // - H4
                // ---------------------------------------------------------------------------------------------------- 
                    else if (depth == 4) {
                        if (rHtml != '') {
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
                            eTag = '</h4>' + EOL + breadcrumbs + EOL
                            //toc += indentSp + '&#183; <i><small><a style="' + STYLE_H4 + '" href="#' + id + '">' + rHtml + '</a></small></i>' + EOL
                            // toc += indentSp + '&#183; ' + ' <i><small><a style="' + STYLE_H4 + '" href="#' + id + '">' + iTextToc + '</a></small></i> ' + iconsHtml + EOL
                            toc += indentNbsp + '&#183; ' + ' <i><small><a style="' + STYLE_H4 + '" href="#' + id + '">' + iTextToc + '</a></small></i> ' + iconsHtml + BOL

                            if (MARKDOWN) {
                                mdStr += "#### $aName$iconsMd$rHtml$EOL"
                                if (ADD_H4_BREADCRUMBS)
                                    mdStr += "*$mdBreadcrumbs*$EOL$EOL"
                                mdToc += "      * *[$rHtml](#$id)* $iconsMd$EOL" // TOC: List element
                            }
                        }
                        // If H4's rHtml is empty then add an empty line
                            else
                                // If grand-parent was not empty but this node is empty
                                    if (rawHtml(n.parent.parent.text, false) != '')
                                    // If parent was not empty but this node is empty
                                        if (rawHtml(n.parent.text, false) != '')
                                            sTag += BOL
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
                                if (rHtml != '')
                                    p = '<p>' + indentNbspPara + rHtml + '</p>' + EOL
                                // If there is a rootUrl, then the images will have it in their path instead of the local folder, the filename will be the same. So basically the file will then have images that are on an online website instead of locally, the RootUrl specifies where on the web are stored the images with the same name.
                                    if (rootUrl != '') {
                                        def linkPathFilename =  FilenameUtils.getName(linkPath) // Get file name of source file
                                        linkPath = rootUrl + linkPathFilename
                                    }
                                sTag = indentSp + p + indentNbspPara + '<img src="' + linkPath + '" alt="' + rHtml + '" style="' + STYLE_IMG + '">' + aName
                                eTag = '</img><br><br>' + EOL
                                iText = ''
                            if (MARKDOWN)
                                mdStr += "![$rHtml]($linkPath)$EOL" // Markdown image
                        }

                    // ----------------------------------------------------------------------------------------------------
                    // - Nodes that have no links and no notes
                    // ---------------------------------------------------------------------------------------------------- 
                        else if (!hasLink && !hasNote) {
                            // List element
                                if (rText.take(2) == '* ') {
                                    sTag = indentSp +  indentNbspPara + '&#8226; ' + aName
                                    eTag = BOL
                                    iText = rHtml.replace('* ', ' ')

                                    if (MARKDOWN)
                                        mdStr += "$rHtml$EOL" // No need to add the * it is already in the text
                                }
                            // Paragraph
                                else {
                                    sTag = indentSp + '<p>' + aName + indentNbspPara
                                    eTag = '</p>' + EOL

                                    if (MARKDOWN)
                                        mdStr += "$iconsMd$rHtml$EOL$EOL"
                                }
                        }

                    // ----------------------------------------------------------------------------------------------------
                    // - Nodes that are only links
                    // ---------------------------------------------------------------------------------------------------- 
                        else if (hasLink && !hasNote) {
                            // Insert the file in the document in a gray box (for the following file types) (add file types if necessary)
                                if (!hasUrlLink && link =~ /(txt|log|sh|groovy|vim|ini)$/) {
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
                                        // If there is a rootUrl, then the images will have it in their path instead of the local folder, the filename will be the same. So basically the file will then have images that are on an online website instead of locally, the RootUrl specifies where on the web are stored the images with the same name.
                                            if (rootUrl != '') {
                                                def linkPathFilename =  FilenameUtils.getName(linkPath) // Get file name of source file
                                                linkPath = rootUrl + linkPathFilename
                                            }
                                        p = ''
                                        if (rHtml != '')
                                            p = '<p>' + indentNbspPara + rHtml + '</p>' + EOL
                                        sTag = indentSp + p + indentNbspPara + '<img src="' + linkPath + '" alt="' + rHtml + '" style="' + STYLE_IMG + '">' + aName
                                        eTag = '</img><br><br>' + EOL
                                        iText = ''
                                    if (MARKDOWN)
                                        mdStr += "![$rHtml]($linkPath)$EOL" // Markdown image
                                }
                            // Freeplane link
                                else if (link =~ /mm#ID_/) {
                                    linkId = (link =~ /#(ID_.*)/)[0][1] // Extract ID_<NUMBER> part from the link
                                    sTag = indentSp + aName + indentNbspPara + '<a href="#' + linkId + '">'
                                    eTag = '</a><br>' + EOL
                                    if (MARKDOWN)
                                        mdStr += "[$iconsMd$rHtml](#$linkId)$EOL$EOL"
                                }
                           // List element with link
                                else if (rText.take(2) == '* ') {
                                    sTag = indentSp + indentNbspPara + '&#8226; ' + aName + '<a href="' + link + '">'
                                    eTag = '</a><br>' + EOL
                                    iText = rHtml.replace('* ', ' ')

                                    if (MARKDOWN)
                                        mdStr += "* [$iText]($link)$EOL"
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
                                    if (showVideoEmbedded) {
                                        // Adapt the Youtube URL to an embedded Youtube URL 
                                            if (linkPath =~ /youtube|youtu\.be/) {
                                                linkPath = linkPath.replaceAll('m.youtube.com', 'www.youtube.com') // Remove the seconds that could be appended
                                                linkPath = linkPath.replace('watch?v=', 'embed/')
                                                linkPath = linkPath.replaceAll('&t=\\d+s', '') // Remove the seconds that could be appended
                                                linkPath = linkPath.replace('youtu.', 'www.youtube.com')
                                                linkPath = linkPath.replace('be/', '/embed/')
                                            }
                                        sTag = indentSp + indentNbspPara + aName + '<iframe src="' + linkPath + '" width="560" height="315" allowfullscreen="allowfullscreen">'
                                        eTag = '</iframe><br>' + EOL
                                    }
                                    else {
                                        sTag = indentSp + indentNbspPara + aName + '<a href="' + linkPath + '">'
                                        eTag = '</a><br>' + EOL
                                    }
                                    if (MARKDOWN) {
                                        if (!hasFolderLink) // Ignore links to folder because they don't work in Markdown (at least in Windows with the Firefox plugin)
                                            mdStr += "[$rHtml]($linkPath)$EOL$EOL"
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
                        //htmlStr += indentSp + indentNbspPara + aName + '<small style="' + STYLE_DET + '"><i>(' + details + ')</i></small><br>' + EOL
                        htmlStr += indentSp + indentNbspPara + '<small style="' + STYLE_DET + '"><i>(' + details + ')</i></small><br>' + EOL

                        if (MARKDOWN)
                            mdStr += "*($details)*$EOL$EOL"
                    }

                // ====================================================================================================
                // = Attributes: Add as a table if any
                // ==================================================================================================== 
                    // s0 Try to add spaces before the tables... it doesn't work if I just add indentNbspPara http://stackoverflow.com/questions/29046021/apply-space-character-before-table-in-html
                    if (depth > 1 && n.attributes.size() > 0) {
                        def tableStr = indentSp + '<table style="' + STYLE_ATTR_TAB + '">' + EOL
                        def mdTableStr = "| | |$EOL"
                        mdTableStr += "|---|---|$EOL"
                        // Loop the attributes and create a row with 2 cells for each
                            n.attributes.names.each { attributeName ->
                                //attributeValue = n.attributes.get(attributeIndex)
                                attributeValue = n[attributeName] // Get the formula calculation 
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
                        def connectorLinkText = ''
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
                                    connectorLinkText = truncateText(it.source.plainText, SHORT_TEXT_MAX_SIZE, true, false)
                                    connectorsInList += indentSp + indentNbspPara + '<small><a href="#' + it.source.id + '">&lt; ' + connectorLinkText + '</a></small>'
                                    if (MARKDOWN)
                                        mdConnectorsInList += "[$it.source.plainText](#$it.source.id)"
                                    if (SHOW_CONNECTOR_DETAILS) {
                                        connectorsInList += ' <i><small>This section' + tLabel + '&lt;---' + mLabel + sLabel + connectorLinkText + '{' + pathToNode + '}</small></i><br>' + EOL
                                        if (MARKDOWN)
                                            mdConnectorsInList += ' *This section' + tLabel + '&lt;---' + mLabel + sLabel + connectorLinkText + '{' + pathToNode + "}*$EOL$EOL"
                                    }
                                    else {
                                        connectorsInList += BOL
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
                                    connectorLinkText = truncateText(it.target.plainText, SHORT_TEXT_MAX_SIZE, true, false)
                                    connectorsOutList += indentSp + indentNbspPara + '<small><a href="#' + it.target.id + '">&gt; ' + connectorLinkText + '</a></small>'
                                    if (MARKDOWN)
                                        mdConnectorsOutList += "[$it.target.plainText](#$it.target.id)"
                                    if (SHOW_CONNECTOR_DETAILS) {
                                         connectorsOutList += ' <i><small>This section' + sLabel + mLabel+ '---&gt;'  + tLabel + connectorLinkText + '{' + pathToNode + '}</small></i><br>' + EOL
                                        if (MARKDOWN)
                                            mdConnectorsOutList += ' *This section' + sLabel + mLabel+ '---&gt;'  + tLabel + connectorLinkText  + '{' + pathToNode + "}*$EOL$EOL"
                                    }
                                    else {
                                        connectorsOutList += BOL
                                        if (MARKDOWN)
                                            mdConnectorsOutList += "$EOL$EOL"
                                    }
                            }
                            htmlStr += connectorsOutList
                            if (MARKDOWN)
                                mdStr += mdConnectorsOutList

            // if (LARGE_MAP_USE_FILE) {
            //     htmlFileTmp.append(htmlStr, 'utf-8') // Append the chunck to the temp file.
            //     htmlStr = '' // Reset the string for the next chunk appended.
            //     if (MARKDOWN) {
            //         mdFileTmp.append(mdStr, 'utf-8') // Append the chunck to the temp file.
            //         mdStr = '' // Reset the string for the next chunk appended.
            //     }
            // }
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
    // = Run shell commands from the root node's note (or branch root)
    // ==================================================================================================== 
        if (runBranchRootScript) { // - If the branch root node contains a note which could be the shell script to run 
            def SHELL_SCRIPT_PATH = OUT_DIR + 'MapToHtmlDoc.sh'
            // Exit if bash path doesn't exist
                if (os == 'windows') {
                    def bashPath = new File(BASH_PATH)
                    if (!bashPath.exists())
                        throw new Exception("To run shell commands please make sure that $BASH_PATH exists.")
                }
            // Convert the note to text
                def shellScript = rawNote(branchRootNode)
            def runScript = false
            // ····································································································
            // · Password: If the note/script contains the variable $password, then show the password input box
            // ···································································································· 
                def password = ''
                if (shellScript.contains('$password')) {
                    password = passwordPrompt("Please enter the password required for the script in the branch root node (Press shift-tab or tab 2 times to focus on the textbox):")
                    if (password != null) 
                        runScript = true
                }
                else // If there is no $password variable in the note (maybe the password was entered in the note directly)
                    runScript = true
            // ····································································································
            if (runScript) { // ·
            // ···································································································· 
                // Write the note/script to a file
                    def scriptWriter = new File(SHELL_SCRIPT_PATH)
                    shellScript = shellScript.replace('$branchRootName', branchRootName)
                    shellScript = shellScript.replace('$password', password)
                    scriptWriter.write(shellScript, 'utf-8')
                // Run the script
                    def bashCmd = "$BASH_PATH $SHELL_SCRIPT_PATH"
                    def proc = bashCmd.execute()
                    proc.waitFor() 
                // Delete so that the password is not available in it.
                    scriptWriter.delete()
                }
        }

    // ====================================================================================================
    // = Create the PDF file (close the pdf file prior to running this)
    // ==================================================================================================== 
        /* command = '"C:\\Tools\\PrinceXML\\bin\\prince.exe c:\\temp\\out.html c:\\temp\\out.pdf"' */
        /* executeOnShell(command) */
        /* // Remove the princexml logo (uses a batch file with vim commands inside) */ 
        /*     // The batch file here contains only this command: c:\vim\vim82\vim.exe -c "e c:/temp/out.pdf | exe 'g,^\/T (www\.princexml\.com,norm 9k16dd' | exe 'g,^<<\/Producer (Prince,norm 1k4dd' | wq" */
        /*     command = '"C:\\Users\\alexandre.viau\\AppData\\Roaming\\Freeplane\\1.5.x\\scripts\\MapToHtmlDocRemovePrinceXmlLogo.bat"' */
        /*     executeOnShell(command) */
        // For now add this to a batch file to convert manually and add the link to that batch in the taskbar
            // C:\Tools\PrinceXML\bin\prince.exe c:\temp\out.html c:\temp\out.pdf
            // c:\vim\vim82\vim.exe -c "e c:/temp/out.pdf | exe 'g,^\/T (www\.princexml\.com,norm 9k16dd' | exe 'g,^<<\/Producer (Prince,norm 1k4dd' | 0407
            // c:\temp\out.pdf

