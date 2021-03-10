<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="MapToHtmlDoc - Demo Map" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1547331592545" LINK="https://viaa.github.io/MapToHtmlDoc_-_Demo_Map.html" BACKGROUND_COLOR="#ccffff">
<icon BUILTIN="pencil"/>
<font NAME="Rockwell" SIZE="36" BOLD="true"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Version: 2019-01-12_17-19-52
    </p>
  </body>
</html>
</richcontent>
<hook NAME="MapStyle" background="#ffffff" zoom="0.829">
    <conditional_styles>
        <conditional_style ACTIVE="true" STYLE_REF="s-1: Abandonned" LAST="false">
            <node_contains_condition VALUE="s-1" ITEM="filter_node"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="s0: Todo" LAST="false">
            <node_contains_condition VALUE="s0 " ITEM="filter_node"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="s1: Doing" LAST="false">
            <node_contains_condition VALUE="s1 " ITEM="filter_node"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="s2: Done" LAST="false">
            <node_contains_condition VALUE="s2 " ITEM="filter_node"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="s3: Important" LAST="false">
            <node_contains_condition VALUE="s3 " ITEM="filter_node"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="IGNORE" LAST="false">
            <node_compare_condition user_name="IGNORE (IGNORE)" MATCH_CASE="true" VALUE="IGNORE" COMPARATION_RESULT="0" SUCCEED="true" ITEM="filter_node"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="OLD" LAST="false">
            <node_compare_condition user_name="IGNORE (OLD)" MATCH_CASE="true" VALUE="OLD" COMPARATION_RESULT="0" SUCCEED="true" ITEM="filter_node"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="BAK" LAST="false">
            <node_compare_condition user_name="IGNORE (BAK)" MATCH_CASE="true" VALUE="BAK" COMPARATION_RESULT="0" SUCCEED="true" ITEM="filter_node"/>
        </conditional_style>
    </conditional_styles>
    <properties show_icon_for_attributes="true" fit_to_viewport="false;" show_note_icons="true" edgeColorConfiguration="#808080ff,#808080ff,#808080ff,#808080ff,#808080ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" MAX_WIDTH="600.0 px" COLOR="#000000" STYLE="as_parent">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
<stylenode TEXT="s0: Todo" BACKGROUND_COLOR="#00ff00">
<icon BUILTIN="PalmIcons/cSeries/GreenN-Z/Green-t"/>
</stylenode>
<stylenode TEXT="s2: Done" BACKGROUND_COLOR="#ff0000">
<icon BUILTIN="button_ok"/>
</stylenode>
<stylenode TEXT="s1: Doing" BACKGROUND_COLOR="#ff9900">
<icon BUILTIN="executable"/>
</stylenode>
<stylenode TEXT="s-1: Abandonned" BACKGROUND_COLOR="#999999">
<icon BUILTIN="button_cancel"/>
</stylenode>
<stylenode TEXT="s3: Important" BACKGROUND_COLOR="#ffff00">
<icon BUILTIN="info"/>
</stylenode>
<stylenode TEXT="OLD" COLOR="#000000" STYLE="as_parent" MAX_WIDTH="600.0 px">
<icon BUILTIN="PalmIcons/dFileMan/Delete/Trashcan"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<cloud COLOR="#666666" SHAPE="ARC"/>
</stylenode>
<stylenode TEXT="IGNORE" COLOR="#000000" STYLE="as_parent" MAX_WIDTH="600.0 px">
<icon BUILTIN="closed"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<cloud COLOR="#666666" SHAPE="ARC"/>
</stylenode>
<stylenode TEXT="BAK" COLOR="#000000" STYLE="as_parent" MAX_WIDTH="600.0 px">
<icon BUILTIN="PalmIcons/dFileMan/Storage/File-cabinet"/>
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<cloud COLOR="#666666" SHAPE="ARC"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="188" RULE="ON_BRANCH_CREATION"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <pre># Shell Script to upload to GitHub

# ####################################################################################################
# # Initialization
# ####################################################################################################
    GIT_SITE='viaa'
    GIT_USERNAME='alexandreviau%40gmail.com' # @ should be replaced by %40
    GIT_PASSWORD='$password'

# ####################################################################################################
# # Main
# ####################################################################################################

    # ====================================================================================================
    # = Local
    # ====================================================================================================
        echo 'Copying the files to the local git repository'
            mkdir /d/GitHubWebsites/$GIT_SITE/$branchRootName
            cp /c/Temp/MapToHtmlDoc/$branchRootName* /d/GitHubWebsites/$GIT_SITE/$branchRootName
            cp /c/Temp/MapToHtmlDoc/$branchRootName.html /d/GitHubWebsites/$GIT_SITE/$branchRootName/index.html
            cd /d/GitHubWebsites/$GIT_SITE/$branchRootName

        # ----------------------------------------------------------------------------------------------------
        # - Git
        # ----------------------------------------------------------------------------------------------------
            echo 'Adding files...'
                git add *

            echo 'Commiting...'
                git commit -am 'Page update'

    # ====================================================================================================
    # = Remote
    # ====================================================================================================
        echo 'Pushing...'
            git push &quot;https://${GIT_USERNAME}:${GIT_PASSWORD}@github.com/${GIT_SITE}/$branchRootName.github.io.git&quot; master --force

echo 'Finished'</pre>
  </body>
</html>
</richcontent>
<node TEXT="Introduction" POSITION="right" ID="ID_566377176" CREATED="1497111225374" MODIFIED="1499439933595">
<edge COLOR="#808080"/>
<node TEXT="What is it?" FOLDED="true" ID="ID_1808926678" CREATED="1497111702297" MODIFIED="1508139732946">
<icon BUILTIN="info"/>
<node TEXT="" FOLDED="true" ID="ID_1488609538" CREATED="1497111708022" MODIFIED="1497111708022">
<node FOLDED="true" ID="ID_1464493212" CREATED="1497111709652" MODIFIED="1497111740978"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This map is a demo map for the Freeplane groovy script <b><font color="#ff0000">MapToHtmlDoc.groovy</font></b>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="https://github.com/viaa/FreeplaneScripts" ID="ID_1767889679" CREATED="1513759007517" MODIFIED="1513759012497" LINK="https://github.com/viaa/FreeplaneScripts"/>
</node>
<node TEXT="The script will take a map with a structure like this map and convert it automatically to a basic although very usable html document that can later be converted to pdf or uploaded to the web, for example on Github pages." FOLDED="true" ID="ID_149309362" CREATED="1497111747393" MODIFIED="1511347906061">
<node TEXT="PDF Creation" ID="ID_1458681393" CREATED="1497111796247" MODIFIED="1497111796251" LINK="file:/D:/Work/MindMaps/Doc/MapToHtmlDocDemoMap.mm#ID_324386908"/>
</node>
<node TEXT="It is possible to convert only a part of a map. If you want to whole map to be converted to html, you have to select the root node before to run the script, otherwise only the branch of the currently selected node will be converted." ID="ID_799281830" CREATED="1507189016871" MODIFIED="1507189108064"/>
<node TEXT="Once you copied the script to your Freeplane scripts folder and restarted Freeplane, just run the script while this map is in focus in freeplane, then a file called c:\temp\out.html will be created that will be the html version of this map, or any other map that you created and run the script on. It works on any map, but it is better if you keep the structure similar to this one. See the Sections and Structure section below." ID="ID_288990436" CREATED="1497111802087" MODIFIED="1497111917396"/>
</node>
</node>
<node TEXT="Quick and easy basic documentation" FOLDED="true" ID="ID_411145636" CREATED="1497111244683" MODIFIED="1508139817192">
<icon BUILTIN="PalmIcons/aOffice/Folders/Books"/>
<icon BUILTIN="PalmIcons/aOffice/Misc/Hourglass"/>
<node TEXT="" FOLDED="true" ID="ID_603809610" CREATED="1497111289402" MODIFIED="1497111289402">
<node TEXT="One problem with creating documents with Word is that it is not very easy as in Freeplane to shuffle sections around and restructure the documents. This is actually the main reason I use Freeplane, because it is easy to restructure things, but there are also many other reasons like searching and linking." FOLDED="true" ID="ID_570876380" CREATED="1497111489479" MODIFIED="1497111581849">
<node TEXT="Sections and structure" ID="ID_1939097856" CREATED="1497111921920" MODIFIED="1497111921921" LINK="file:/D:/Work/MindMaps/Doc/MapToHtmlDocDemoMap.mm#ID_832412206"/>
</node>
<node TEXT="I wanted to be able to create documents using Freeplane and just moves blocs of nodes arount to restructure my documents easily." ID="ID_995873642" CREATED="1497111289766" MODIFIED="1497111371358"/>
</node>
<node TEXT="Compose documents from existing nodes" FOLDED="true" ID="ID_601793243" CREATED="1497111464701" MODIFIED="1512598605161">
<icon BUILTIN="FreeplaneIcons32px/08Office/edit"/>
<node TEXT="It is easy to compose a document using text and images and links that are stored in other maps, just by copying them into the document map." ID="ID_65028233" CREATED="1497111612365" MODIFIED="1497111651900"/>
<node TEXT="Also someone may want to keep the structure of maps like this map for example so that it can be converted to html later if needed." ID="ID_950856550" CREATED="1497111652250" MODIFIED="1497111699946"/>
</node>
</node>
<node TEXT="Other usages" ID="ID_1066963525" CREATED="1497119788023" MODIFIED="1535487427942">
<icon BUILTIN="PalmIcons/dFileMan/Command/User-form"/>
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_832412206" TARGET_LABEL="IGNORE" STARTINCLINATION="66;15;" ENDINCLINATION="-632;30;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<node TEXT="Outlook Emails" FOLDED="true" ID="ID_805180690" CREATED="1497119797548" MODIFIED="1508246417390">
<icon BUILTIN="Mail"/>
<node TEXT="The html created can also for example copy pasted from Chrome (for example) into an outlook email, and the links and images will be preserved. So it allows to compose complex emails in Freeplane with a lot of hyperlinking, sections and content." ID="ID_446817172" CREATED="1497119609464" MODIFIED="1497119680548"/>
<node TEXT="If you want to copy-paste the html to Outlook, you can use Internet Explorer to view the html and copy the output from there, once pasted the line spacing is better. But with Chrome the links from one node to another are kept and they worked from the Outlook Email so better to use Chrome." ID="ID_317163407" CREATED="1498550963252" MODIFIED="1498558614954"/>
</node>
<node TEXT="Blogs" FOLDED="true" ID="ID_1475990785" CREATED="1497119803490" MODIFIED="1497119805800">
<node TEXT="The source html created could probably be copy pasted into blogs, although I haven&apos;t tried that. It might work with Blogger or Wordpress." ID="ID_477508955" CREATED="1497119680777" MODIFIED="1497119755648"/>
</node>
<node TEXT="External edition" FOLDED="true" ID="ID_1015240581" CREATED="1497198817966" MODIFIED="1497198892570">
<node TEXT="It is possible to open the html document generated with OpenOffice Writer or Word to edit it if it needs further editing." ID="ID_741986714" CREATED="1497198833440" MODIFIED="1497198866062"/>
</node>
</node>
<node TEXT="How to run the script" ID="ID_1491961635" CREATED="1525258057636" MODIFIED="1525258064862">
<node TEXT="Download" FOLDED="true" ID="ID_1254146104" CREATED="1525258067212" MODIFIED="1525258164837">
<node TEXT="Download it here:" FOLDED="true" ID="ID_1543090421" CREATED="1525258068252" MODIFIED="1525258080982">
<node TEXT="https://raw.githubusercontent.com/viaa/FreeplaneScripts/master/MapToHtmlDoc.groovy" ID="ID_1851087015" CREATED="1525258068254" MODIFIED="1525258068254" LINK="https://raw.githubusercontent.com/viaa/FreeplaneScripts/master/MapToHtmlDoc.groovy"/>
</node>
</node>
<node TEXT="Run" FOLDED="true" ID="ID_888388194" CREATED="1525258165044" MODIFIED="1525258165983">
<node TEXT="Then in Freeplane go to the Tools menu, select &quot;Open user directory&quot;, open the &quot;Scripts&quot; directory, and copy the downloaded script there." ID="ID_760485107" CREATED="1525258068257" MODIFIED="1525258068257"/>
<node TEXT="Restart Freeplane." ID="ID_82656343" CREATED="1525258068261" MODIFIED="1525258093711"/>
<node TEXT="Then position the cursor to the root node of the branch to export, and go to the menu Tools &gt; Scripts, then select the script named &quot;Map To Html Doc&quot;." ID="ID_78214302" CREATED="1525258068263" MODIFIED="1525258068263"/>
</node>
</node>
</node>
<node TEXT="Features" POSITION="right" ID="ID_998844426" CREATED="1497029381635" MODIFIED="1512600687555">
<icon BUILTIN="idea"/>
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_106028219" STARTINCLINATION="975;-177;" ENDINCLINATION="-511;-663;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<edge COLOR="#808080"/>
<node TEXT="Sections and structure" ID="ID_832412206" CREATED="1497109568309" MODIFIED="1508138032707">
<node TEXT="Auto creation of sections" FOLDED="true" ID="ID_1270706494" CREATED="1497110129463" MODIFIED="1497110146034">
<node ID="ID_317161472" CREATED="1497110159233" MODIFIED="1497110250318"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The html file in the output will have the same structure as the map.
    </p>
    <p>
      The colors used in the html files are the same as used in this map, so for the automatic layout.
    </p>
    <p>
      To set the map to automatic layout go to <b><font color="#ff0000">Format &gt; Automatic layout &gt; for all nodes</font></b>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="If a main level like the level in blue or green (even red) are missing then they will just not show on the map but the structure of the nodes that follow will be as if they existed." ID="ID_1916539304" CREATED="1497112015971" MODIFIED="1497112057096"/>
</node>
<node TEXT="Auto creation of table of contents" FOLDED="true" ID="ID_1502529847" CREATED="1497110146703" MODIFIED="1508073899674">
<node ID="ID_229392823" CREATED="1497110274296" MODIFIED="1497110381689"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      A table of contents will be created with the colors and relative font size and structure as the main nodes in this map (the first 4 levels). This table on contents links to the sections in the map to help navigation, and a <b><font color="#ff0000">link [Table of contents]</font></b>&#160;is automatically created in each main sections to return to the top.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="You can also use the back button of the browser to go back after clicking a link in the table of content. It allows to quickly jump to sections and back to the top." ID="ID_1608736676" CREATED="1497111148499" MODIFIED="1508073881844"/>
</node>
<node TEXT="" FOLDED="true" ID="ID_528095958" CREATED="1497112384773" MODIFIED="1497112452667">
<node TEXT="Try moving sections around, to one branch then to another, running the script and refreshing the html page, and see the html structure follow the changes." ID="ID_215647132" CREATED="1497112386037" MODIFIED="1497112452665"/>
</node>
</node>
<node TEXT="Node properties" ID="ID_224771795" CREATED="1497029381635" MODIFIED="1508138034225">
<node TEXT="Links" ID="ID_1056115359" CREATED="1497029381635" MODIFIED="1497106628408">
<node FOLDED="true" ID="ID_325032601" CREATED="1497029600618" MODIFIED="1497108881265"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Freeplane link to another node in this map</b>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="The script will use the nodes IDs to create the links in the document." FOLDED="true" ID="ID_243315452" CREATED="1497112873192" MODIFIED="1497112908538">
<node TEXT="More features" ID="ID_1454150633" CREATED="1497029597975" MODIFIED="1497108686577" LINK="freeplane:/%20/D:/Work/MindMaps/Doc/MapToHtmlDocTest.mm#ID_106028219"/>
</node>
</node>
<node FOLDED="true" ID="ID_1803004181" CREATED="1497106472016" MODIFIED="1497108885839"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Link to a file</b>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="If the file matches certain patterns (txt|log|sh|groovy|vim|ini), it is automatically inserted in a gray box. If you want to have more file formats you will need to edit it in the script:" FOLDED="true" ID="ID_1481860156" CREATED="1497108725811" MODIFIED="1497112632604">
<node TEXT="system.ini" ID="ID_1760686471" CREATED="1497106529589" MODIFIED="1497106529589" LINK="file:/C:/Windows/system.ini"/>
</node>
<node TEXT="If it doesn&apos;t match the pattern above, a link to the file is created:" FOLDED="true" ID="ID_65756803" CREATED="1497108744943" MODIFIED="1497112599709">
<node TEXT="services.msc" ID="ID_1875270419" CREATED="1514549833169" MODIFIED="1514549833170" LINK="file:/C:/Windows/System32/services.msc"/>
</node>
</node>
<node FOLDED="true" ID="ID_1964841208" CREATED="1497029651216" MODIFIED="1497108883923"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>URL</b>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="https://www.google.com" ID="ID_1830345263" CREATED="1497029656867" MODIFIED="1497029656867" LINK="https://www.google.com"/>
</node>
<node FOLDED="true" ID="ID_996029056" CREATED="1497106573920" MODIFIED="1497108853970"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Link to a folder</b>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Windows" ID="ID_756047969" CREATED="1497106587701" MODIFIED="1497106587701" LINK="file:/C:/Windows/"/>
</node>
<node FOLDED="true" ID="ID_1366768445" CREATED="1511089650460" MODIFIED="1511090192195"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Link to files</b>
    </p>
  </body>
</html>
</richcontent>
<font BOLD="true"/>
<node FOLDED="true" ID="ID_1615324998" CREATED="1511176315387" MODIFIED="1511252127655"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The copying of linked files and images to the output directory was required for markdown as links to the file system paths didn't work (on windows+firefox markdown plugin) so the files needed to be in the same directory as the markdown file.
    </p>
    <p>
      I have added the possibility to enable this for html also. This can be useful because it is now possible to have a html document with all its linked files in the same place and it makes it easy to copy the files for example to a web server.
    </p>
    <p>
      The files and images when copied are renamed to the name of the map + the name of the file + the id of the node + its extension.
    </p>
    <p>
      By default the files will be copied. If <font color="#ff0000">MARKDOWN</font>&#160;= false then the files will not be copied unless
    </p>
    <p>
      <font color="#ff0000">COPY_FILES_TO_OUT_DIR</font>&#160;= true
    </p>
    <p>
      <font color="#ff0000">COPY_IMAGES_TO_OUT_DIR</font>&#160;= true
    </p>
    <p>
      Also it is possible to reuse the files (not to copy them again) the next time the map is exported by setting:
    </p>
    <p>
      @Field def <font color="#ff0000">OVERWRITE_IF_EXISTS</font>&#160;= false
    </p>
    <p>
      If set to true the files will be copied everytime the document is exported.
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_745100889" CREATED="1511089690003" MODIFIED="1511176402624"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      So if the constant <font color="#ff0000">COPY_FILES_TO_OUT_DIR</font>&#160;is set to true, the files that are linked to the map (any formats including images but except files inserted in notes, like ini files) will be copied to the directory where the html and markdown files are created (defined by the OUT_DIR constant). The file will be renamed with the name of the map + the name of the file + the id of the node and its extension. The html and markdown files will be relinked to link to those copied files.
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_186590597" CREATED="1511089921155" MODIFIED="1511090822566"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Note that for if markdown is enabled (using the <font color="#ff0000">MARKDOWN</font>&#160;= true contstant), the files will be copied to the OUT_DIR always, because there is an issue with local files for markdown, maybe this issue is related to windows paths or the Firefox plugin I use to view markdown, but it works only if files are in the same directory as the markdown file.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Note that link to folders are not working in Markdown, paths are not working in Windows and the Firefox plugin I am using, so these links will not be displayed." ID="ID_663802084" CREATED="1511090833727" MODIFIED="1511090888918"/>
</node>
<node FOLDED="true" ID="ID_1316348492" CREATED="1523467037820" MODIFIED="1523518221368"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Links in text</b>
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_1203601051" CREATED="1523467064892" MODIFIED="1523467244646"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This is a link to the <a href="#ID_34785326">Images</a>&#160;section and this is a link to the <a href="#ID_662083576">Configuration</a>&#160; section.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="To add these links I use another script I did called EditNodeExternal.groovy. This script will create child nodes to the current node to open the coretext, details or note in an external html editor (LibreOffice). Once the html content is edited the file is saved then the script is ran again on the node to remove the nodes and the files that were created." FOLDED="true" ID="ID_1801651441" CREATED="1523467258404" MODIFIED="1523467400433">
<node TEXT="EditNodeExternal.groovy" ID="ID_129503487" CREATED="1523517895359" MODIFIED="1523517899149" LINK="https://raw.githubusercontent.com/viaa/FreeplaneScripts/master/EditNodeExternal.groovy"/>
</node>
<node TEXT="In LibreOffice, add the target node id like this:" ID="ID_1042218936" CREATED="1523467464161" MODIFIED="1523467482865">
<hook URI="file:/C:/Screenshots2/Image%201253.png" SIZE="0.44576523" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="Node details" FOLDED="true" ID="ID_233445031" CREATED="1497107024512" MODIFIED="1508140309302">
<node TEXT="This node has details" FOLDED="true" ID="ID_382894597" CREATED="1497107030112" MODIFIED="1497107043134"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This is the detail text
    </p>
  </body>
</html>
</richcontent>
<node TEXT="This node too" ID="ID_1734764384" CREATED="1497107059216" MODIFIED="1497107074189"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Yes this is its node text
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Node notes" FOLDED="true" ID="ID_1049692305" CREATED="1497109628062" MODIFIED="1497109631647">
<node TEXT="If a node as (only) a note, the node will appear in a gray box." ID="ID_231008527" CREATED="1497109913812" MODIFIED="1508225044439">
<font NAME="Segoe WP Semibold"/>
</node>
<node TEXT="If a map as a note, the node will be displayed in a gray box." ID="ID_1406551923" CREATED="1497109632894" MODIFIED="1511093456364"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This is the note. It should appear in a gray box.
    </p>
    <p>
      <b><font color="#3333ff" face="Nyala" size="3">Also with</font></b><font color="#3333ff" face="Nyala" size="3">&#160;</font><font color="#ff00cc" face="Palatino Linotype" size="6">color</font>&#160;and <font color="#ffcc00" face="Rage Italic" size="6">size</font>&#160;and <font color="#cccc00" face="Aharoni" size="6">font</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="If a node is a link for example and has a note, the note content will not be inserted." FOLDED="true" ID="ID_905083844" CREATED="1497110582938" MODIFIED="1508138055872">
<node TEXT="Test link" ID="ID_1324567726" CREATED="1497110645745" MODIFIED="1497110670031" LINK="https://sourceforge.net/projects/freeplane/"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Test note.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="If you want to display code in a note, it is better to put directly the &lt;pre&gt; tag in the HTML Code view of the note editor. Because each lines pasted to the note editor&apos;s layout view becomes a paragraph and is all indented the same, so the indentation will appear wrongly once the html document is rendered." ID="ID_808262811" CREATED="1510662578762" MODIFIED="1510662753492"/>
</node>
</node>
<node TEXT="Formating" ID="ID_1559534251" CREATED="1497108253313" MODIFIED="1512598405038" COLOR="#ffff33" BACKGROUND_COLOR="#ccccff">
<icon BUILTIN="PalmIcons/dFileMan/Panes/Word-window"/>
<icon BUILTIN="pencil"/>
<font NAME="Century" SIZE="24" BOLD="true"/>
<node TEXT="Basic color and size" FOLDED="true" ID="ID_1929185392" CREATED="1497108255963" MODIFIED="1512598668339">
<font SIZE="18" ITALIC="true"/>
<node ID="ID_1026255183" CREATED="1497108261741" MODIFIED="1497109556664"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="6">The </font><b><font size="6" color="#ff0000" face="Snap ITC">color</font></b><font size="6">&#160;and </font><font size="6" color="#0000ff" face="Vijaya">size</font><font size="6">&#160;<u>are retained</u>&#160;</font><i><font size="3">as it is in the map</font></i><font size="6">.</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1657305039" CREATED="1508225233746" MODIFIED="1512598703851"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The color and size can be retained if they are added using the Menu Edit &gt; Node core &gt; <b>Edit node core in dialog</b>&#160;feature. Use Edit node core in dialog or ctrl+b (for bold) ctrl+r (for red) etc these are working also.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="I suggest to set a keyboard shortcut to open the &apos;Edit node core in dialog&apos; window quickly if you need to change a lot of formatting." ID="ID_719284684" CREATED="1508931081803" MODIFIED="1512600097961"/>
</node>
<node TEXT="More advanced style using node style and CSS" FOLDED="true" ID="ID_381401682" CREATED="1512597478783" MODIFIED="1517495667773" COLOR="#ff66ff" BACKGROUND_COLOR="#990099">
<font SIZE="30" BOLD="true" ITALIC="true"/>
<node ID="ID_1778033847" CREATED="1512598724706" MODIFIED="1512600211128"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This is <b>another way of adding formatting</b>&#160;were you can use the <b>format panel</b>&#160;or the <b>toolbars</b>&#160;to add formatting to nodes.
    </p>
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_274970293" CREATED="1512598763572" MODIFIED="1512600079428"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Once the formatting is added to a node, you need to add to the <font color="#ff0000"><b>'pencil' icon</b></font>&#160;to the node <b>so that</b>&#160;its style will be <b>rendered as CSS</b>&#160;in the output document. If the icon is not added the node will appear with the default formatting even though in the map it appears formatted.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="" ID="ID_1640217739" CREATED="1512599172088" MODIFIED="1512600473592">
<hook URI="file:/C:/Screenshots/Image%206564.png" SIZE="1.0" NAME="ExternalObject"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Here is the <font color="#ff0000">pencil (red pen)</font>&#160;icon to render the node's style as CSS
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node ID="ID_1860124012" CREATED="1512599384810" MODIFIED="1512600054485"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The script will read the <b>node style properties</b>&#160;and <b>convert</b>&#160; them <b>to CSS</b>&#160;style properties. The properties supported for now are:
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="* font-family:" ID="ID_1519611597" CREATED="1512599575356" MODIFIED="1512599575356"/>
<node TEXT="* font-size:" ID="ID_575633243" CREATED="1512599575356" MODIFIED="1512599575356"/>
<node TEXT="* font-weight: bold;" ID="ID_304825723" CREATED="1512599575357" MODIFIED="1512599575357"/>
<node TEXT="* font-style: italic;" ID="ID_617723517" CREATED="1512599575357" MODIFIED="1512599575357"/>
<node TEXT="* color:" ID="ID_69717356" CREATED="1512599575358" MODIFIED="1512599575358"/>
<node TEXT="* background-color:" ID="ID_1551901859" CREATED="1512599575358" MODIFIED="1512599575358"/>
<node TEXT="Here are some examples:" FOLDED="true" ID="ID_424170752" CREATED="1512599376737" MODIFIED="1512599382110">
<node TEXT="This is text to test css style...|" ID="ID_377730808" CREATED="1512595911689" MODIFIED="1512637351323" COLOR="#00ff33" BACKGROUND_COLOR="#666666">
<icon BUILTIN="pencil"/>
<font NAME="Consolas" SIZE="24" BOLD="true"/>
</node>
<node TEXT="More text for testing css styling." ID="ID_1311705557" CREATED="1512596077339" MODIFIED="1512597082764" BACKGROUND_COLOR="#decea0">
<icon BUILTIN="pencil"/>
<font NAME="Palace Script MT" SIZE="48" BOLD="false"/>
</node>
</node>
<node ID="ID_1191420407" CREATED="1512598836232" MODIFIED="1512600018966"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      You could probably use <b>conditional styles</b>&#160;to add style and add the 'pencil' icon automatically.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Known issues" ID="ID_1887442100" CREATED="1512600589276" MODIFIED="1512600592786">
<node TEXT="* There seems to be a conflict when adding both the CSS formatting and the basic HTML formatting using the Menu Edit &gt; Node core &gt; Edit node core in dialog feature. I will try to resolved that later." ID="ID_1792567143" CREATED="1512600593136" MODIFIED="1512600668052"/>
</node>
</node>
<node TEXT="Node levels" FOLDED="true" ID="ID_468582310" CREATED="1497029381635" MODIFIED="1508246466116">
<icon BUILTIN="PalmIcons/dFileMan/Trees/Blue-tree"/>
<node TEXT="Auto-indentation of child nodes" FOLDED="true" ID="ID_80948979" CREATED="1497029381635" MODIFIED="1508073892371">
<node TEXT="Library" FOLDED="true" ID="ID_555585377" CREATED="1497106856140" MODIFIED="1497106858654">
<node TEXT="Catalogs" FOLDED="true" ID="ID_963219391" CREATED="1497106859442" MODIFIED="1497106862470">
<node FOLDED="true" ID="ID_1851779685" CREATED="1497107326752" MODIFIED="1497107337745"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Books</b>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Titles" ID="ID_92398429" CREATED="1497106870164" MODIFIED="1497106872820"/>
<node FOLDED="true" ID="ID_1021036871" CREATED="1497106865494" MODIFIED="1497107353057"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff0000">Authors</font></b>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Mr. Koalka" ID="ID_185116196" CREATED="1497106891848" MODIFIED="1497108951483"/>
<node TEXT="Mr. Tulpano" ID="ID_909045161" CREATED="1497106900698" MODIFIED="1497108961524"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Change node levels" FOLDED="true" ID="ID_1566502814" CREATED="1508073908810" MODIFIED="1508073912212">
<node TEXT="Node level can be enforced by the user by setting specific icons on them. By default these icons will change the level of a node to level 2, 3 and 4, 5 (level 1 is the root node and cannot be set):" FOLDED="true" ID="ID_1375312217" CREATED="1508073922046" MODIFIED="1518753059465">
<node TEXT="* Dark-2" ID="ID_1998908557" CREATED="1508074007242" MODIFIED="1508074109342"/>
<node TEXT="* Dark-3" ID="ID_1188948088" CREATED="1508074008231" MODIFIED="1508074114434"/>
<node TEXT="* Dark-4" ID="ID_673194661" CREATED="1508074008971" MODIFIED="1508074118008"/>
</node>
<node TEXT="This node will be changed a level 3 node (H3) because it has the icon with a number 3." ID="ID_371800472" CREATED="1508138195101" MODIFIED="1508139652364">
<icon BUILTIN="PalmIcons/cSeries/NumbersDark/Dark-3-"/>
</node>
<node TEXT="If you put the number &apos;5&apos; on an node with an image that is normally at level 1, 2, 3, 4, the image will be displayed because the node will appear at level 5 in the rendered html. Images are not displayed normally if they are at nodes with a level 1, 2, 3 or 4." FOLDED="true" ID="ID_675272720" CREATED="1518753068622" MODIFIED="1518753252698">
<node TEXT="Level1 = The root node (in black)." ID="ID_453724652" CREATED="1518753191910" MODIFIED="1518753208128"/>
<node TEXT="Level2 = The title in blue." ID="ID_905951537" CREATED="1518753191912" MODIFIED="1518753211232"/>
<node TEXT="Level3 = The title in green." ID="ID_879671332" CREATED="1518753191912" MODIFIED="1518753214148"/>
<node TEXT="Level4 = The title in red." ID="ID_116456676" CREATED="1518753191912" MODIFIED="1518753216631"/>
</node>
</node>
</node>
<node TEXT="Breadcrumbs" FOLDED="true" ID="ID_1472184249" CREATED="1510139779342" MODIFIED="1510139782839">
<node TEXT="" FOLDED="true" ID="ID_1504309059" CREATED="1510139783501" MODIFIED="1510139783501">
<node TEXT="The breadcrumb feature will add the paths to each sections with each individual parts of the path as a link to be click to jump to that particular section. This is a little bit like the clickable paths feature in window managers." ID="ID_1420347834" CREATED="1510139786212" MODIFIED="1510139864653"/>
<node TEXT="By defaul the breadcrumbs are added to H2 and H3 sections, but there is also the possibility to add them to H4 section as well by changing the constant ADD_H4_BREADCRUMBS = false." ID="ID_1413092494" CREATED="1510139865035" MODIFIED="1510139924931"/>
<node TEXT="Each H2, H3, H4 have their contstant to add and remove the breadcrumbs and are defined like this by default:" FOLDED="true" ID="ID_1607441233" CREATED="1510139925323" MODIFIED="1510166946911">
<node TEXT="* def ADD_H2_BREADCRUMBS = true" ID="ID_541280068" CREATED="1510139953199" MODIFIED="1510166888910"/>
<node TEXT="* def ADD_H3_BREADCRUMBS = true" ID="ID_1053244924" CREATED="1510139953199" MODIFIED="1510166893878"/>
<node TEXT="* def ADD_H4_BREADCRUMBS = false" ID="ID_1633021379" CREATED="1510139953199" MODIFIED="1510166896677"/>
</node>
</node>
</node>
</node>
<node TEXT="More features" POSITION="right" ID="ID_106028219" CREATED="1497029381635" MODIFIED="1599661449260">
<icon BUILTIN="idea"/>
<icon BUILTIN="PalmIcons/dFileMan/Misc/Spark"/>
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_797831984" STARTINCLINATION="-1791;-359;" ENDINCLINATION="-545;-176;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<edge COLOR="#808080"/>
<node TEXT="Images" ID="ID_34785326" CREATED="1497029381635" MODIFIED="1508142040129">
<icon BUILTIN="PalmIcons/dFileMan/Image/Image-file"/>
<node TEXT="3 types of image insertion" FOLDED="true" ID="ID_336707127" CREATED="1497029381635" MODIFIED="1523467445202">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1366768445" STARTINCLINATION="877;0;" ENDINCLINATION="861;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<node FOLDED="true" ID="ID_1071338087" CREATED="1497029825254" MODIFIED="1497108576998"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Image embedded in the map:</b>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Hold the ctrl key and drag-n-drop and image to the map from Windows Explorer for example:" ID="ID_449121044" CREATED="1497108577477" MODIFIED="1497108585997"/>
<node TEXT="" ID="ID_1574202634" CREATED="1497029835904" MODIFIED="1535482792916">
<icon BUILTIN="PalmIcons/cSeries/NumbersDark/Dark-5-"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      You can add details to an image also
    </p>
  </body>
</html>
</richcontent>
<hook URI="file:/D:/probook_c/Users/Public/Pictures/Sample%20Pictures/Koala.jpg" SIZE="0.5859375" NAME="ExternalObject"/>
</node>
</node>
<node FOLDED="true" ID="ID_192512495" CREATED="1497029805881" MODIFIED="1497108611278"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Image linked:</b>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Drag-n-drop an image to the map from Windows Explorer for example:" ID="ID_1477254609" CREATED="1497108612159" MODIFIED="1497108616902"/>
<node TEXT="Tulips.jpg" ID="ID_1679868938" CREATED="1497029819979" MODIFIED="1535482818216" LINK="file:/D:/probook_c/Users/Public/Pictures/Sample%20Pictures/Tulips.jpg"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Here too details can be added
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Web image:" FOLDED="true" ID="ID_881902189" CREATED="1511307439801" MODIFIED="1511307447133">
<node TEXT="Freeplane Bee" ID="ID_151372436" CREATED="1511307672554" MODIFIED="1512599838208" LINK="https://pbs.twimg.com/media/DEYn_46W0AAkpzw.jpg"/>
</node>
</node>
</node>
<node TEXT="Videos" ID="ID_620410827" CREATED="1511304604341" MODIFIED="1511304607442">
<node TEXT="Youtube" ID="ID_634047388" CREATED="1511304608900" MODIFIED="1511304610842">
<node TEXT="Youtube videos are supported:" ID="ID_1358081176" CREATED="1511304613582" MODIFIED="1511305475433">
<node TEXT="https://www.youtube.com/watch?v=yUsaWHyvxOY&amp;t=12s" ID="ID_1513305822" CREATED="1511304626659" MODIFIED="1516978239416" LINK="https://www.youtube.com/watch?v=yUsaWHyvxOY&amp;t=12s">
<icon BUILTIN="video"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      How to create a mindmap using Freeplane
    </p>
  </body>
</html>
</richcontent>
<node TEXT="In order to have the video displayed as an embedded video in the page, the user should add the video icon to the node with the link to the video otherwise it will be displayed as a link to the video. This is to avoid having too many videos embedded in a page." FOLDED="true" ID="ID_1167176228" CREATED="1516978792659" MODIFIED="1516978799975">
<node TEXT="This is the video icon." ID="ID_1314698730" CREATED="1516978805773" MODIFIED="1516979115461">
<hook URI="file:/C:/Screenshots2/Image%20876.png" SIZE="1.0" NAME="ExternalObject"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Video icon
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
<node TEXT="" FOLDED="true" ID="ID_200773584" CREATED="1511304691510" MODIFIED="1511304691510">
<node TEXT="I will try to integrate other video sites like dailymotions, vimeo etc later. I didn&apos;t try them yet." ID="ID_331318454" CREATED="1511304635966" MODIFIED="1511304684211"/>
</node>
</node>
<node TEXT="Icons" ID="ID_1373311502" CREATED="1508139904515" MODIFIED="1508141639275">
<icon BUILTIN="group"/>
<node TEXT="Icons are partially supported" ID="ID_933116811" CREATED="1508139907780" MODIFIED="1508141985414">
<node TEXT="Icons are shown in the table of content and in the content of the document. If there are multiple icons on a node, all the icons will be shown." ID="ID_828839388" CREATED="1508139914134" MODIFIED="1508139953131"/>
<node TEXT="Icons are automatically resized, so large icons and small icons will have the same size, by default 12 pixels by 12 pixels." ID="ID_643855794" CREATED="1508140121957" MODIFIED="1508140169234"/>
<node TEXT="The path to the icons path is set using the constant ICONS_PATH. On Windows for Freeplane version 1.6.x and non-portable the path should be fine by default. For other types of installations the path should be changed using that constant." ID="ID_54696375" CREATED="1508140335235" MODIFIED="1508140445481"/>
<node TEXT="For some reason some icons like the bee icon (small), has a different name when read from script (bee.svg from bundle), than from the icons selector (Freeplane), so for this icons for example cannot be inserted. This icon is not located in the icons folder and its subfolders. I will try to resolve that later. That is why I say that they are partially supported." ID="ID_626597562" CREATED="1508141486497" MODIFIED="1508142103000">
<icon BUILTIN="smiley-oh"/>
</node>
</node>
<node TEXT="Reserved icons" ID="ID_618422947" CREATED="1508141800964" MODIFIED="1510094064021">
<node TEXT="Some icons are use to accomplish some features so they will not be displayed if used and may modify the rendering of the html. These icons are the red X, the impass sign, and the numbers 2 to 4 inclusively with a blue-green background." ID="ID_923298642" CREATED="1508141812186" MODIFIED="1508141919991"/>
</node>
</node>
<node TEXT="Attributes" ID="ID_1127853689" CREATED="1497197384853" MODIFIED="1508138064099">
<node TEXT="Attributes are rendered as html tables" ID="ID_1163312747" CREATED="1497197389392" MODIFIED="1497197409246">
<node TEXT="This is a table with attributes" ID="ID_19088320" CREATED="1497197412404" MODIFIED="1497350041511">
<attribute_layout NAME_WIDTH="81.74999756366022 pt" VALUE_WIDTH="146.2499956414105 pt"/>
<attribute NAME="Name" VALUE="Kiki"/>
<attribute NAME="Country" VALUE="Australia"/>
<attribute NAME="Food" VALUE="Eucalyptus leaves"/>
<attribute NAME="Activity" VALUE="Tree climbing"/>
<attribute NAME="Friends" VALUE="Kangaroos"/>
</node>
</node>
</node>
<node TEXT="Connectors" ID="ID_1041428222" CREATED="1510090519356" MODIFIED="1532562281952">
<icon BUILTIN="PalmIcons/bHome/Chores/Elec-outlet"/>
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_962226392" SOURCE_LABEL="Connector label (IGNORE)" TARGET_LABEL="Bullet list label" MIDDLE_LABEL="Middle label" STARTINCLINATION="-1329;206;" ENDINCLINATION="-199;-15;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<node TEXT="" FOLDED="true" ID="ID_1269235487" CREATED="1510093979553" MODIFIED="1510093979553">
<node TEXT="Connectors are an easy way to create links from one section to another, back and forth." FOLDED="true" ID="ID_173422651" CREATED="1510096503333" MODIFIED="1510096527017">
<node TEXT="They will simply be created a links to the section they are linked to. There will also be a link created in the target section to the source link. The labels are also shown as part of the text besided the link that forms some kind of textual arrow." ID="ID_1543602251" CREATED="1510093982280" MODIFIED="1510096555513"/>
</node>
</node>
<node TEXT="Ignore sections/nodes in connectors" FOLDED="true" ID="ID_611331884" CREATED="1510134350714" MODIFIED="1510134390300">
<node TEXT="If the word &apos;IGNORE&apos; is contained in a connector label, the link will not be created at the node where that label is located. If an &apos;IGNORE&apos; is found in the label in the middle, no link will be created at all (this can be useful if connectors are needed in the map but they are not needed in the html output)." ID="ID_1955046585" CREATED="1510134391554" MODIFIED="1511857118069"/>
</node>
<node TEXT="SHOW_CONNECTOR_DETAILS" FOLDED="true" ID="ID_257161057" CREATED="1510095380029" MODIFIED="1510095387456">
<node TEXT="There is a constant called &apos;SHOW_CONNECTOR_DETAILS&apos;. When it is set to &apos;true&apos; (by default) the details of the connector is shown, so a textual arrow is displayed besided the link and it shows the source section and target section, all 3 labels if any is defined, and also the path to the source or target node." ID="ID_497556981" CREATED="1510095389500" MODIFIED="1510095516844"/>
<node TEXT="If it is set to &apos;false&apos; then only a link is show but there is still the &lt; or &gt; char at the left of the link that shows if it is a &apos;in&apos; connector (&lt;) or &apos;out&apos; connector (&gt;)." ID="ID_1243698365" CREATED="1510095548731" MODIFIED="1510095610716"/>
</node>
<node TEXT="SHORT_TEXT_MAX_SIZE" FOLDED="true" ID="ID_1293978116" CREATED="1510096437065" MODIFIED="1510096438339">
<node TEXT="This constant will simply defined the length of the text used for each node that form the path to the node in the details of the node. By default it is set to 25." ID="ID_1233953727" CREATED="1510096440100" MODIFIED="1510096488914"/>
</node>
</node>
<node TEXT="Formulas" FOLDED="true" ID="ID_1337234133" CREATED="1508262881443" MODIFIED="1508883208235">
<node TEXT="Core text" FOLDED="true" ID="ID_631174457" CREATED="1508262887920" MODIFIED="1508262891665">
<node TEXT="Formulas specified in the core text of nodes will be evaluated." ID="ID_1738122118" CREATED="1508262893444" MODIFIED="1508262913636"/>
<node TEXT="The formulas in attributes are not yet supported." ID="ID_1753170571" CREATED="1508262913815" MODIFIED="1508262932108"/>
<node TEXT="Example 5+5 =" FOLDED="true" ID="ID_554175573" CREATED="1508331265439" MODIFIED="1508331304106">
<node TEXT="=5+5" ID="ID_558271090" CREATED="1508262467551" MODIFIED="1508331326099">
<font BOLD="false"/>
</node>
</node>
</node>
<node TEXT="Formulas" FOLDED="true" ID="ID_1473215467" CREATED="1508776574161" MODIFIED="1508776576291">
<node TEXT="Node with formula as attributes:" ID="ID_1547201111" CREATED="1508776580433" MODIFIED="1508838234189">
<attribute NAME="5 + 6 =" VALUE="= 5 + 6"/>
</node>
</node>
</node>
<node TEXT="Latex" FOLDED="true" ID="ID_750584323" CREATED="1508882619219" MODIFIED="1508883209183">
<node TEXT="Core text" FOLDED="true" ID="ID_778374416" CREATED="1508882630774" MODIFIED="1508882633138">
<node TEXT="\latex $\int_0^\infty e^{-x^2} dx=\frac{\sqrt{\pi}}{2}$" ID="ID_1146191452" CREATED="1508868564592" MODIFIED="1508923330751" STYLE="oval">
<font SIZE="18"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      If this latex formula is not rendered in the html doc it is because the JLatexMath library is not installed and the script is not configured. Read this section for more details.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="For now it is only a basic support in the sense that the script will simply take the first latex formula it finds (the text between the first $...$) and will create a image file for it and link it like an embedded image." ID="ID_273715888" CREATED="1508885941280" MODIFIED="1508886073357"/>
</node>
<node TEXT="Library required" FOLDED="true" ID="ID_789196711" CREATED="1508882964820" MODIFIED="1508885551884">
<node ID="ID_1931079163" CREATED="1508882967122" MODIFIED="1518697709893"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Copy <u>C:\Program Files\Freeplane\plugins\org.freeplane.plugin.latex\lib\jlatexmath-1.0.6.jar</u>&#160; to <u>C:\Users\%USERNAME%\AppData\Roaming\Freeplane\1.5.x\lib</u>&#160;&#160;and in the Freeplane Preferences in the Plugins tab, add that path to the &quot;<b>Script classpath: Additional directories containing classes and/or JARs (see tooltip)</b>&quot; field. Restart Freeplane after that so it will load the libraries to be used by Groovy).
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Script code configuration" FOLDED="true" ID="ID_792691799" CREATED="1508923160635" MODIFIED="1508923172436">
<node ID="ID_1382656799" CREATED="1508885555382" MODIFIED="1508885684662"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      By default the code to execute the latex formulas is commented out. Search in the script for &quot;<font color="#ff0000">BEGIN - LATEX</font>&quot; and uncomment the code between it and &quot;<font color="#ff0000">END - LATEX</font>&quot;. There are 2 such section to uncomment, the imports and the code to create the latex image files.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Bullet lists" FOLDED="true" ID="ID_962226392" CREATED="1497029381635" MODIFIED="1508074246215">
<node TEXT="" FOLDED="true" ID="ID_691129849" CREATED="1508074192151" MODIFIED="1508074192151">
<node TEXT="An asterix as the first char will be converted to a bullet." ID="ID_1641369483" CREATED="1497029516449" MODIFIED="1508074235341"/>
<node TEXT="* List item 1" ID="ID_1720286881" CREATED="1508074215728" MODIFIED="1508074219258"/>
<node TEXT="* List item 2" ID="ID_1183886613" CREATED="1497029521529" MODIFIED="1497029525675"/>
<node TEXT="* List item 3" ID="ID_386527639" CREATED="1497029526169" MODIFIED="1497029530909"/>
</node>
</node>
</node>
<node TEXT="Extra features" POSITION="right" ID="ID_797831984" CREATED="1497108979742" MODIFIED="1508246942839">
<icon BUILTIN="idea"/>
<icon BUILTIN="launch"/>
<edge COLOR="#808080"/>
<node TEXT="Ignored sections" FOLDED="true" ID="ID_1455741693" CREATED="1497109000350" MODIFIED="1497109020774">
<node TEXT="Why this feature was added?" FOLDED="true" ID="ID_1664469574" CREATED="1497109125121" MODIFIED="1497112345518">
<node TEXT="If a node is called IGNORE, BAK or OLD, or contains specific icons, the nodes that are put inside them will be ignored. This is useful to put temporary things or todo items, or things not needed anymore but that we want to keep stored in the map.&#xa;As many of these sections as needed can be created at any level in the map." ID="ID_1510170325" CREATED="1497109041343" MODIFIED="1497339704538"/>
<node TEXT="The ignored sections will not be visilble in the html file." ID="ID_902861845" CREATED="1497109380758" MODIFIED="1497109395348"/>
</node>
<node TEXT="Ignored sections using icons" FOLDED="true" ID="ID_911605202" CREATED="1497339536808" MODIFIED="1497339919828">
<node TEXT="You should not see the 2 nodes below, they should be ignored:" ID="ID_730029603" CREATED="1497339903384" MODIFIED="1511440988386"/>
<node TEXT="This node (but not it&apos;s children) will be excluded if the node has this icon" FOLDED="true" ID="ID_569158912" CREATED="1497336558491" MODIFIED="1512041969523">
<icon BUILTIN="button_cancel"/>
<node ID="ID_113474311" CREATED="1497339599462" MODIFIED="1512041982453"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This text <font color="#ff0000">should</font>&#160;appear in the output.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="This node and it&apos;s child not will be excluded if the node has this icon" FOLDED="true" ID="ID_1970782863" CREATED="1497337819276" MODIFIED="1497339620776">
<icon BUILTIN="closed"/>
<node ID="ID_270111790" CREATED="1497339599462" MODIFIED="1512041986855"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This text <font color="#ff0000">should not</font>&#160;appear in the output.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Ignored sections with attributes" FOLDED="true" ID="ID_1594407392" CREATED="1497543987993" MODIFIED="1497543996217">
<node TEXT="This section should be empty:" ID="ID_272395147" CREATED="1497339903384" MODIFIED="1512042042705"/>
<node TEXT="At Quinbus&apos; request" FOLDED="true" ID="ID_1512728740" CREATED="1497543998744" MODIFIED="1497544049369">
<attribute NAME="Type" VALUE="Private"/>
<node TEXT="https://sourceforge.net/p/freeplane/discussion/758437/thread/67f8576c/" ID="ID_868508449" CREATED="1497544050009" MODIFIED="1497544050009" LINK="https://sourceforge.net/p/freeplane/discussion/758437/thread/67f8576c/"/>
</node>
</node>
<node TEXT="Ignored sections using nodes with specific core text" FOLDED="true" ID="ID_767063111" CREATED="1497339652384" MODIFIED="1497339842437">
<node ID="ID_647950553" CREATED="1497339750086" MODIFIED="1497339892968"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The styles for these are contained in this map, you can use the copy style function to get them. <font color="#ff0000">Format &gt; Managed Styles &gt; Copy map styles from</font>... Then when a node will be called IGNORED, BAK or OLD, a gray cloud will be added automatically with the corresponding icon.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="The gray cloud nodes and their child nodes should not be visible in this section." ID="ID_1992284026" CREATED="1497339930785" MODIFIED="1497339965752"/>
<node TEXT="IGNORE" FOLDED="true" ID="ID_951450337" CREATED="1497107450494" MODIFIED="1497107452125">
<node TEXT="Text I don&apos;t want to appear in the html file." ID="ID_409125203" CREATED="1497029381635" MODIFIED="1497109243321"/>
<node TEXT="Things to do later:" FOLDED="true" ID="ID_166954663" CREATED="1497109248277" MODIFIED="1497109269056">
<node TEXT="Add more features." ID="ID_1245604558" CREATED="1497109270148" MODIFIED="1497109298440"/>
<node TEXT="Send to the forum." ID="ID_577026769" CREATED="1497109282793" MODIFIED="1497109290834"/>
<node TEXT="Maybe add templates instead of hardcoded html/css?" ID="ID_1185938673" CREATED="1497109299207" MODIFIED="1497109315603"/>
<node TEXT="Add youtube videos?" ID="ID_204069836" CREATED="1497109966895" MODIFIED="1497109989261"/>
</node>
</node>
<node TEXT="BAK" FOLDED="true" ID="ID_1143676697" CREATED="1497029981041" MODIFIED="1497029983570">
<node TEXT="Text that will be ignored but can serve as a backup section" ID="ID_1776752341" CREATED="1497029984234" MODIFIED="1497030002729"/>
<node TEXT="I will keep a copy of this" FOLDED="true" ID="ID_1264229872" CREATED="1497109355399" MODIFIED="1497109360656">
<node ID="ID_1458679224" CREATED="1497108261741" MODIFIED="1497108363719"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="6">The </font><b><font size="6" color="#ff0000" face="Snap ITC">color</font></b><font size="6">&#160;and </font><font size="6" color="#0000ff" face="Vijaya">size</font><font size="6">&#160;<u>are retained</u>&#160; </font><i><font size="3">as it is in the map</font></i><font size="6">.</font>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="OLD" FOLDED="true" ID="ID_359837504" CREATED="1497030003778" MODIFIED="1497030006043">
<node TEXT="Old stuff to delete. Like a recycle bin. Will be ignored also." FOLDED="true" ID="ID_1925026007" CREATED="1497030006665" MODIFIED="1497030024707">
<node TEXT="The pinguins image will not appear in the html file." ID="ID_476767547" CREATED="1497109194311" MODIFIED="1497109222790">
<hook URI="file:/C:/Users/Public/Pictures/Sample%20Pictures/Penguins.jpg" SIZE="0.5859375" NAME="ExternalObject"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="PDF creation" ID="ID_324386908" CREATED="1497110483274" MODIFIED="1507040868533">
<node TEXT="Chrome" ID="ID_195301891" CREATED="1547331567609" MODIFIED="1547331569265">
<node TEXT="Here is a way to convert the html to pdf using Chrome which produce a nicer pdf than princexml or libreoffice. I noticed that princexml had some issues (a link pointing to a node with a note that contains a tag was not clickable)." ID="ID_1804136668" CREATED="1547331570301" MODIFIED="1547331570301"/>
<node TEXT="&quot;C:\Program Files (x86)\Google\Chrome\Application\chrome.exe&quot; --no-sandbox --headless --disable-gpu --print-to-pdf=%1.pdf --displayHeaderFooter=false %1" ID="ID_1643302288" CREATED="1547331570302" MODIFIED="1547331570302"/>
<node TEXT="You can put this in a batch file and drop the html file to the batch file." ID="ID_394176720" CREATED="1547331570303" MODIFIED="1547331570303"/>
<node TEXT="Example:" ID="ID_365898360" CREATED="1547331982859" MODIFIED="1547331996571">
<node TEXT="&quot;C:\Program Files (x86)\Google\Chrome\Application\chrome.exe&quot; --no-sandbox --headless --disable-gpu --print-to-pdf=C:\Temp\Mthd\MyDoc.pdf --displayHeaderFooter=false C:\Temp\Mthd\MyDoc.html" ID="ID_750311147" CREATED="1547331986111" MODIFIED="1547331986111"/>
</node>
</node>
<node TEXT="PrinceXML" FOLDED="true" ID="ID_1149512415" CREATED="1497110489220" MODIFIED="1497110491424">
<node TEXT="You can use PrinceXML to convert your html to pdf once it is generated so you get a portable document with images included." ID="ID_295185508" CREATED="1497110492087" MODIFIED="1497110542350"/>
</node>
<node TEXT="Office Suites" ID="ID_1063291896" CREATED="1497267293243" MODIFIED="1497267325144">
<node TEXT="You can use also OpenOffice Writer or Microsoft Word to open the html file generated and save it as PDF or other formats as you need." ID="ID_1059487994" CREATED="1497267310033" MODIFIED="1497267348362"/>
</node>
</node>
<node TEXT="Image minimize" FOLDED="true" ID="ID_1766577308" CREATED="1507030156891" MODIFIED="1507030169883">
<node TEXT="ImageEmbedLinkSwitcher.groovy" FOLDED="true" ID="ID_1765991671" CREATED="1507030171387" MODIFIED="1507030495278">
<node TEXT="This script is useful if you want to get the images out of the screen, to minimize them. Then embedded images will appear as links." ID="ID_782805686" CREATED="1507030243138" MODIFIED="1507030495278"/>
<node TEXT="Code" ID="ID_560719244" CREATED="1507030288244" MODIFIED="1510662250605"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <pre>// This script simply do a switch between an image that is embedded and a image as a link.
// If the image is a link, it will become an image embedded in the map with no link.
// If the image is embedded, it will become a link to an image.

if (link.text == null &amp;&amp; externalObject.uri != null) {
    link.text = externalObject.uri
    externalObject.uri = null
}
else if (externalObject.uri == null &amp;&amp; link != null) {
    externalObject.uri = link.text
    link.text = null
}
    </pre>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Upload to the web" FOLDED="true" ID="ID_1977730383" CREATED="1511976153017" MODIFIED="1511976562450">
<icon BUILTIN="FreeplaneIcons32px/09Docs&amp;Folders/html"/>
<node TEXT="Description" FOLDED="true" ID="ID_80615536" CREATED="1511976175337" MODIFIED="1511976480585">
<node TEXT="Once the html document is created the script can use a bash script that is stored in the root node&apos;s note (or the current branch root node if a branch is exported) and will run it to do any kind of operations that is in this script, and mainly to upload the html document generated and it&apos;s linked files to the web using git or ftp for example." ID="ID_526326420" CREATED="1511976178617" MODIFIED="1511976373859"/>
<node TEXT="I have only tested with git for the moment." ID="ID_1348953946" CREATED="1511976374425" MODIFIED="1512032346005" LINK="freeplane:/%20/C:/Users/alexandre.viau/AppData/Roaming/Freeplane/1.6.x/scripts/MapToHtmlDocDemoMap.mm#ID_1348953946"/>
</node>
<node TEXT="Shell script variables" FOLDED="true" ID="ID_1332111752" CREATED="1511976401361" MODIFIED="1511976420458">
<node TEXT="The script will replace some variables in the shell script (the root node&apos;s note) with some of its values here are some of these, the names are the same as in the script." FOLDED="true" ID="ID_681049751" CREATED="1511976617785" MODIFIED="1511976690194">
<node TEXT="$branchRootName" ID="ID_1943918665" CREATED="1511976690927" MODIFIED="1511976713468"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This is the name of the document exported
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="$password" ID="ID_348897660" CREATED="1511976772090" MODIFIED="1511976850834"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      If the $password variable is found in the shell script, then a dialog will popup to enter a password. If cancel is is clicked or escape is pressed, then the script won't execute
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="Git" FOLDED="true" ID="ID_1728054439" CREATED="1511976171657" MODIFIED="1511976173098">
<node TEXT="Github allows users that have a Github account to create web sites as a repository. Html pages can be pushed to such a website repository like code files. There are some tutorials on the web on how to do that. Here is 2 examples of tutorials:" FOLDED="true" ID="ID_429634311" CREATED="1511976886801" MODIFIED="1511977323771">
<node TEXT="https://www.youtube.com/watch?v=3jt-J4Rc__M" ID="ID_615156692" CREATED="1510766820971" MODIFIED="1510766820971" LINK="https://www.youtube.com/watch?v=3jt-J4Rc__M"/>
<node TEXT="https://guides.github.com/features/pages/" ID="ID_1451866533" CREATED="1511212254450" MODIFIED="1511212254450" LINK="https://guides.github.com/features/pages/"/>
</node>
<node FOLDED="true" ID="ID_1805895963" CREATED="1512032262002" MODIFIED="1512032269615"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>Requirements</b>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="If a user is on the Windows operating system, he will need to install PortableGit and set the path to its git-bash.exe executable." FOLDED="true" ID="ID_1587264976" CREATED="1511977109113" MODIFIED="1511977149233">
<node TEXT="https://git-scm.com/download/win" ID="ID_526167041" CREATED="1511977167341" MODIFIED="1511977215321" LINK="https://git-scm.com/download/win"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Download PortableGit
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_32141034" CREATED="1511979114305" MODIFIED="1511979163805"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      If you are on Windows you will need too set the <font color="#ff0000">BASH_PATH</font>&#160;constant in script to the location of PortableGit's 'git-bash.exe'.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="On Linux or Mac make sure git is installed." ID="ID_970824047" CREATED="1512032155506" MODIFIED="1512032321230"/>
</node>
<node TEXT="Here is a sample shell script to put to the root node&apos;s note (or branch root node&apos;s note) to upload the document to a Github website:" FOLDED="true" ID="ID_1106222404" CREATED="1511977465009" MODIFIED="1511977522058">
<node TEXT="Sample shell script" FOLDED="true" ID="ID_1745318332" CREATED="1511977526329" MODIFIED="1512396167605"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <pre># Shell Script to upload to GitHub
            
            # ####################################################################################################
            # # Initialization
            # ####################################################################################################
                GIT_SITE='viaa'
                GIT_USERNAME='alexandreviau%40gmail.com' # @ should be replaced by %40
                GIT_PASSWORD='$password'
            
            # ####################################################################################################
            # # Main
            # ####################################################################################################
            
                # ====================================================================================================
                # = Local
                # ====================================================================================================
                    echo 'Copying the files to the local git repository'
                        cp /c/Temp/MapToHtmlDoc/${branchRootName}* /d/GitHubWebsites/$GIT_SITE
                        cd /d/GitHubWebsites/$GIT_SITE
            
                    # ----------------------------------------------------------------------------------------------------
                    # - Git
                    # ----------------------------------------------------------------------------------------------------
                        echo 'Adding files...'
                            git add ${branchRootName}*
            
                        echo 'Commiting...'
                            git commit -am 'Page update'
            
                # ====================================================================================================
                # = Remote
                # ====================================================================================================
                    echo 'Pushing...'
                        git push &quot;https://${GIT_USERNAME}:${GIT_PASSWORD}@github.com/${GIT_SITE}/${GIT_SITE}.github.io.git&quot; master --force
            
            echo 'Finished'
        </pre>
  </body>
</html>
</richcontent>
<node TEXT="NOTE: If you copy a shell script from one node to another, it is better to copy from the html view of the note editor and not from the layout view. And put it between &amp;lt;pre&amp;gt; &amp;lt;/pre&amp;gt; tags." FOLDED="true" ID="ID_979902391" CREATED="1511981397426" MODIFIED="1512032011260">
<node TEXT="" ID="ID_1266006547" CREATED="1511990467204" MODIFIED="1511990472387">
<hook URI="file:/C:/Screenshots/Image%206528.png" SIZE="0.8583691" NAME="ExternalObject"/>
</node>
</node>
</node>
</node>
<node TEXT="You need to put the icon named &apos;executable&apos; to the node to make it run. If the note has a script but not this &apos;executable&apos; icon, the script will not run. This can be practical for users who have something else than a script in the note or that don&apos;t want to upload the page right now, then they could just remove temporarily the icon during the document design and testing." FOLDED="true" ID="ID_939750754" CREATED="1511995384756" MODIFIED="1511995550037">
<node TEXT="" ID="ID_114846974" CREATED="1511995556119" MODIFIED="1512031920178">
<hook URI="file:/C:/Screenshots/Image%206529.png" SIZE="1.0" NAME="ExternalObject"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This is the icon named 'executable'
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Note that it takes a few seconds before the page is refresh on Github pages (as html display) for some reason, but if you look at the html code on the repository you will see the change right away." ID="ID_1330142272" CREATED="1511995844295" MODIFIED="1511995947970"/>
</node>
<node TEXT="ftp/sftp" FOLDED="true" ID="ID_1518212399" CREATED="1511977008513" MODIFIED="1511977018474">
<node TEXT="To send the exported html document to a website using ftp or sftp just put ftp or sftp commands in the root node&apos;s note (or branch root node&apos;s note) which contain the a shell script that can do any operations." ID="ID_175549903" CREATED="1511977019041" MODIFIED="1511977090970"/>
</node>
</node>
</node>
<node TEXT="Configuration" FOLDED="true" POSITION="right" ID="ID_662083576" CREATED="1507667102285" MODIFIED="1510134229444">
<icon BUILTIN="PalmIcons/cSeries/Blue1/Blue-pc"/>
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1784484328" MIDDLE_LABEL="IGNORE" STARTINCLINATION="-286;8;" ENDINCLINATION="-286;8;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<edge COLOR="#808080"/>
<node TEXT="Freeplane preferences" FOLDED="true" ID="ID_1037169726" CREATED="1507667110409" MODIFIED="1507716393207">
<node TEXT="Allow script execution" FOLDED="true" ID="ID_1600618141" CREATED="1507667121107" MODIFIED="1507667203462">
<node TEXT="As for all Freeplane scripts, we need to make sure that Freeplane is allowed to run scripts." ID="ID_868479381" CREATED="1507667161134" MODIFIED="1507667230402"/>
<node TEXT="Go to Tools menu &gt; Preferences &gt; Plugin tab &gt; Scripting section, then where it is written &quot;Script execution enabled&quot;, select &apos;Yes&apos;." ID="ID_1596728053" CREATED="1507667231062" MODIFIED="1507667349986"/>
</node>
<node TEXT="Allow file read/write" FOLDED="true" ID="ID_757334109" CREATED="1507667203852" MODIFIED="1507667221334">
<node TEXT="Go to Tools menu &gt; Preferences &gt; Plugin tab &gt; Scripting section, then where it is written &apos;Permit file/read (or write) operations (NOT recommended)&apos;, check the box. The scripts both reads from a temp file and writes to the destination html file so both check boxes need to be checked." ID="ID_830035439" CREATED="1507667231062" MODIFIED="1507667455254"/>
</node>
</node>
<node TEXT="MapToHtmlDoc.groovy" FOLDED="true" ID="ID_379127410" CREATED="1507716393681" MODIFIED="1507716750300">
<node TEXT="Support for large maps (LARGE_MAP_USE_FILE)" FOLDED="true" ID="ID_1074648696" CREATED="1507716397573" MODIFIED="1507716675674">
<node TEXT="There was a request by a user on the forum to be able to export large maps, but because the document is contained in the string this was causing a memory error." ID="ID_588372056" CREATED="1507716438777" MODIFIED="1507716473122"/>
<node TEXT="After that the script was changed to use a file to append the data instead of doing that into a string, but this was found to be much slower so that when the browser was refreshed the html document seem not completed, until few seconds later, then a second refresh in the browser needed to be done. So a message box was added to tell the user that the html document is completed." ID="ID_265828307" CREATED="1507716473577" MODIFIED="1507716590844"/>
<node ID="ID_503115641" CREATED="1507716591273" MODIFIED="1507716707356"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      But then it was decided to support both memory (for small and normal size maps) and file (for large maps). To allow this the constant <font color="#ff0000"><b>LARGE_MAP_USE_FILE</b></font>&#160; was added. Set it to true so that the script will use a file instead of the memory. Note that it is much faster when this is set to false, so set it to false for small maps.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="HTML document path" FOLDED="true" ID="ID_1912240626" CREATED="1507752292472" MODIFIED="1507752476854">
<node ID="ID_178050298" CREATED="1507752313547" MODIFIED="1507752473994"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      By default the html document created will be in c:/temp/out.html. But you change change it by modifying the constants <font color="#ff0000"><b>OUT_DIR</b></font>&#160;(for the directory of were the file will be created) and <font color="#ff0000"><b>OUT_FILENAME</b></font>&#160; (for the name of the file).
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="By default they are set like this:" FOLDED="true" ID="ID_72123664" CREATED="1507752454952" MODIFIED="1507752454952">
<node TEXT="OUT_DIR = &apos;c:/temp/&apos;" ID="ID_742111355" CREATED="1507752454952" MODIFIED="1507752454952"/>
<node TEXT="OUT_FILENAME = &apos;out.html&apos;" ID="ID_1116861881" CREATED="1507752454952" MODIFIED="1507752454952"/>
</node>
</node>
</node>
</node>
<node TEXT="History" FOLDED="true" POSITION="right" ID="ID_1784484328" CREATED="1507667504082" MODIFIED="1508246710686">
<icon BUILTIN="calendar"/>
<edge COLOR="#808080"/>
<node TEXT="Documentation" FOLDED="true" ID="ID_273653473" CREATED="1507667511885" MODIFIED="1513759119499">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_1478027423" MIDDLE_LABEL="The End" STARTINCLINATION="980;-495;" ENDINCLINATION="1328;60;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
<node TEXT="Version: 2017-10-10_23.31.35:" FOLDED="true" ID="ID_725781849" CREATED="1507667517993" MODIFIED="1511306899077">
<node TEXT="Added the &apos;Freeplane Configuration&apos; section." ID="ID_1275234350" CREATED="1507667554585" MODIFIED="1507667585045"/>
</node>
<node TEXT="Version: 2017-10-11_13.15.02:" FOLDED="true" ID="ID_329209147" CREATED="1507716915674" MODIFIED="1511306896026">
<node TEXT="Modified the configuration section, added info about large map support." ID="ID_834344458" CREATED="1507716917201" MODIFIED="1507716943475"/>
</node>
<node TEXT="Version: 2017-10-11_23.08.07:" FOLDED="true" ID="ID_377706493" CREATED="1507752484955" MODIFIED="1511306893911">
<node TEXT="Added HTML document path section to the configuration section." ID="ID_666494889" CREATED="1507752491057" MODIFIED="1507752507777"/>
</node>
<node TEXT="Version: 2017-10-15_16.30.52:" FOLDED="true" ID="ID_1182643409" CREATED="1508074260652" MODIFIED="1511306890787">
<node TEXT="Added the possibility of changing node levels by adding a specific icon with a number to the node." ID="ID_616869992" CREATED="1508074279089" MODIFIED="1508074325409"/>
</node>
<node TEXT="Version: 2017-10-16_11.24.52:" FOLDED="true" ID="ID_278235010" CREATED="1508142289596" MODIFIED="1511306887517">
<node TEXT="Added partial icons support." ID="ID_192754019" CREATED="1508142295376" MODIFIED="1508142310818"/>
</node>
<node TEXT="Version: 2017-10-17_10.30.17:" FOLDED="true" ID="ID_727345545" CREATED="1508225456210" MODIFIED="1511306883533">
<node TEXT="Added comments about formatting limitations." ID="ID_123343227" CREATED="1508225458084" MODIFIED="1508225467059"/>
</node>
<node TEXT="Version: 2017-10-17_20.57.07:" FOLDED="true" ID="ID_930280637" CREATED="1508263024297" MODIFIED="1508263030343">
<node TEXT="Added section for formulas in core text." ID="ID_693191358" CREATED="1508263034245" MODIFIED="1508778513834"/>
</node>
<node TEXT="Version: 2017-10-23_20.07.39:" FOLDED="true" ID="ID_727607978" CREATED="1508778463909" MODIFIED="1511306876199">
<node TEXT="Added section for formulas in attributes." ID="ID_1389419881" CREATED="1508778471113" MODIFIED="1508778518675"/>
</node>
<node TEXT="Version: 2017-10-25_01.55.36:" FOLDED="true" ID="ID_1956412856" CREATED="1508885742688" MODIFIED="1511306870951">
<node TEXT="Added section about latex support." ID="ID_130037155" CREATED="1508885746528" MODIFIED="1508885756522"/>
</node>
<node TEXT="Version: 2017-11-08_01.00.26:" FOLDED="true" ID="ID_268697995" CREATED="1510095621922" MODIFIED="1511306866897">
<node TEXT="Added section about connectors and I added connector samples in the map." ID="ID_1642950171" CREATED="1510095629676" MODIFIED="1510095662710"/>
</node>
<node TEXT="Version: 2017-11-08_11.48.25:" FOLDED="true" ID="ID_1919903400" CREATED="1510134501459" MODIFIED="1511306862016">
<node TEXT="Added connectors &apos;IGNORE&apos; documentation." ID="ID_647739081" CREATED="1510134506443" MODIFIED="1510134530132"/>
</node>
<node TEXT="Version: 2017-11-08_13.19.48:" FOLDED="true" ID="ID_1435161528" CREATED="1510139986312" MODIFIED="1510139989944">
<node TEXT="Added breadcrumb (clickable paths) documentation." ID="ID_209983193" CREATED="1510139990727" MODIFIED="1510140252815"/>
</node>
<node TEXT="Version: 2017-11-14_14.24.57:" FOLDED="true" ID="ID_1115437469" CREATED="1510662294682" MODIFIED="1510662297708">
<node TEXT="I changed the note for the ImageEmbedLinkSwitcher.groovy, I put a &lt;pre&gt; tag in the note." ID="ID_576044513" CREATED="1510662298306" MODIFIED="1510662320620"/>
<node TEXT="Added a comment in the section about notes." ID="ID_888196649" CREATED="1510662763218" MODIFIED="1510662775252"/>
</node>
<node TEXT="Version: 2017-11-19_13.18.17:" FOLDED="true" ID="ID_282017866" CREATED="1511090292518" MODIFIED="1511090299106">
<node TEXT="Added &apos;Link to files&apos; section." ID="ID_1088282623" CREATED="1511090300326" MODIFIED="1511090318050"/>
</node>
<node TEXT="Version: 2017-11-21_10.16.19:" FOLDED="true" ID="ID_1120880242" CREATED="1511252178542" MODIFIED="1511252185071">
<node TEXT="Changed the default values documentation for markdown and file and image copy." ID="ID_1341947276" CREATED="1511252185645" MODIFIED="1511252205697"/>
<node TEXT="Added Github Pages node in IGNORE node to upload to Github pages." ID="ID_94399188" CREATED="1511254049096" MODIFIED="1511254049096"/>
</node>
<node TEXT="Version: 2017-11-22_01.27.07:" FOLDED="true" ID="ID_1412103965" CREATED="1511306823933" MODIFIED="1511306831948">
<node TEXT="Added support for youtube videos." ID="ID_28288391" CREATED="1511306833057" MODIFIED="1511306838424"/>
</node>
<node TEXT="Version: 2017-11-23_14.46.04:" FOLDED="true" ID="ID_121811067" CREATED="1511441157143" MODIFIED="1511441165858">
<node TEXT="Small changes to this demo map text and structure." ID="ID_1800683829" CREATED="1511441166759" MODIFIED="1511441184592"/>
</node>
<node TEXT="Version: 2017-11-29_19.52.38:" FOLDED="true" ID="ID_1405145843" CREATED="1511977952961" MODIFIED="1511977959122">
<node TEXT="Added the section to upload to the web (with Github)." ID="ID_843682852" CREATED="1511977959665" MODIFIED="1511977974138"/>
</node>
<node TEXT="Version: 2017-11-29_20.14.58:" FOLDED="true" ID="ID_285869064" CREATED="1511979296249" MODIFIED="1511979300099">
<node TEXT="Modified the upload to web section." ID="ID_476042659" CREATED="1511979300673" MODIFIED="1511979309396"/>
</node>
<node TEXT="Version: 2017-11-30_00.40.55:" FOLDED="true" ID="ID_122951726" CREATED="1511995252396" MODIFIED="1511995256709">
<node TEXT="Added a screenshot and explanation about the executable icon that makes the script run." ID="ID_816538188" CREATED="1511995290420" MODIFIED="1511995640604" LINK="file:/C:/Users/alexandre.viau/AppData/Roaming/Freeplane/1.6.x/scripts/MapToHtmlDocDemoMap.mm#ID_979902391"/>
</node>
<node TEXT="Version: 2017-11-30_10.59.56:" FOLDED="true" ID="ID_184146052" CREATED="1512032393442" MODIFIED="1512032397229">
<node TEXT="Small modifications to text and content." ID="ID_668454350" CREATED="1512032397882" MODIFIED="1512032414876"/>
</node>
<node TEXT="Version: 2017-11-30_11.10.19:" FOLDED="true" ID="ID_810496500" CREATED="1512033016970" MODIFIED="1512033020308">
<node TEXT="I added Github push of the .mm in the shell script of the root note&apos;s node along with the push of the html doc generated." ID="ID_1827766131" CREATED="1512033020834" MODIFIED="1512033057036"/>
</node>
<node TEXT="Version: 2017-11-30_13.41.24:" FOLDED="true" ID="ID_212860992" CREATED="1512042095531" MODIFIED="1512042098868">
<node TEXT="Modified the node exclusion documentation, the impass icon in fact excludes the children also, but the red X exclude only the current node." ID="ID_168296408" CREATED="1512042099962" MODIFIED="1512042144452"/>
</node>
<node TEXT="Version: 2017-12-04_16.02.56:" FOLDED="true" ID="ID_1474161347" CREATED="1512396173646" MODIFIED="1512396178455">
<node TEXT="I modified the shell script to add the MapToHtmlDoc subdirectory to the temp directory." ID="ID_186530620" CREATED="1512396179150" MODIFIED="1512396202207"/>
</node>
<node TEXT="Version: 2017-12-07_00.52.42:" FOLDED="true" ID="ID_907386403" CREATED="1512600760512" MODIFIED="1512600763355">
<node TEXT="Added a section to document the formatting using the toolbars and the format panel." FOLDED="true" ID="ID_1298468946" CREATED="1512600765414" MODIFIED="1512600787226">
<node TEXT="More advanced style using node style and CSS" ID="ID_1205966767" CREATED="1512600803864" MODIFIED="1512600803866" LINK="file:/C:/Users/alexandre.viau/AppData/Roaming/Freeplane/1.6.x/scripts/MapToHtmlDocDemoMap.mm#ID_381401682"/>
</node>
</node>
<node TEXT="Version: 2017-12-20_10:38:44:" FOLDED="true" ID="ID_695473143" CREATED="1513759120693" MODIFIED="1513759125950">
<node TEXT="Added link to files groovy and mindmap files." ID="ID_1575682268" CREATED="1513759126532" MODIFIED="1513759142975"/>
</node>
<node TEXT="Version: 2018-01-26_17:02:03:" FOLDED="true" ID="ID_1377380740" CREATED="1516978920823" MODIFIED="1516978924820">
<node TEXT="Added documentation for the video icon that is required now to display the video as embedded video otherwise they are displayed as links." ID="ID_1581498751" CREATED="1516978925839" MODIFIED="1516978951246"/>
</node>
<node TEXT="Version: 2018-02-16_05.58.56:" FOLDED="true" ID="ID_1924500135" CREATED="1518753533687" MODIFIED="1518753537492">
<node TEXT="Added documentation about the possibility of changing node levels by adding a specific icon with a number to the node: Now it is possible to put the number 5, so this is useful if you want to display a node that is an image but that is in the level of a title in the map." ID="ID_1518735394" CREATED="1518753538409" MODIFIED="1518753577234"/>
<node TEXT="Changing a section order." ID="ID_902103591" CREATED="1518753581648" MODIFIED="1518753590249"/>
</node>
<node TEXT="Version: 2018-04-11_20.24.50:" FOLDED="true" ID="ID_1796211170" CREATED="1523467501820" MODIFIED="1523467506721">
<node TEXT="Added links in text documentation." ID="ID_160006415" CREATED="1523467507196" MODIFIED="1523467514048"/>
</node>
<node TEXT="Version: 2018-05-02_13.50.08:" FOLDED="true" ID="ID_1668080981" CREATED="1525258205900" MODIFIED="1525258210142">
<node TEXT="Added details how to run the script." ID="ID_1441329877" CREATED="1525258210660" MODIFIED="1525258216118"/>
</node>
</node>
</node>
<node TEXT="I hope you&apos;ll find it useful too" FOLDED="true" POSITION="right" ID="ID_495374163" CREATED="1497112090702" MODIFIED="1508142077622">
<icon BUILTIN="ksmiletris"/>
<edge COLOR="#808080"/>
<node TEXT="" FOLDED="true" ID="ID_716371057" CREATED="1497112137307" MODIFIED="1497112137307">
<node TEXT="" FOLDED="true" ID="ID_519608694" CREATED="1497112136062" MODIFIED="1497112136062">
<node TEXT="Alexandre" ID="ID_1478027423" CREATED="1497112114098" MODIFIED="1497112115945"/>
</node>
</node>
</node>
<node TEXT="IGNORE" POSITION="left" ID="ID_1580845514" CREATED="1502874538458" MODIFIED="1502874539764">
<edge COLOR="#808080"/>
<node TEXT="Links" FOLDED="true" ID="ID_1557376757" CREATED="1511252223302" MODIFIED="1512547700344">
<cloud COLOR="#ccffff" SHAPE="ARC"/>
<node TEXT="Doc" FOLDED="true" ID="ID_765761429" CREATED="1514985195595" MODIFIED="1514985196923">
<node TEXT="s0 Git repo not working for this map..." ID="ID_1518187183" CREATED="1514987123732" MODIFIED="1514987138765">
<font SIZE="18"/>
</node>
<node TEXT="file:/C:/temp/MapToHtmlDoc/out.html" ID="ID_398677771" CREATED="1514985197561" MODIFIED="1514985197561" LINK="file:/C:/temp/MapToHtmlDoc/out.html"/>
<node TEXT="file:/C:/temp/MapToHtmlDoc/MapToHtmlDoc_-_Demo_Map.html" ID="ID_1330303560" CREATED="1514985200747" MODIFIED="1514985671049" LINK="file:/C:/temp/MapToHtmlDoc/MapToHtmlDoc_-_Demo_Map.html"/>
</node>
<node TEXT="Git" FOLDED="true" ID="ID_1487288115" CREATED="1511180959192" MODIFIED="1511253028935">
<node TEXT="Init" FOLDED="true" ID="ID_1569066843" CREATED="1514982290866" MODIFIED="1514982292130">
<node TEXT="mkdir /d/GitHubWebsites/viaa/MapToHtmlDoc_-_Demo_Map" ID="ID_1783463166" CREATED="1514982310783" MODIFIED="1514986105986"/>
<node TEXT="cd /d/GitHubWebsites/viaa/MapToHtmlDoc_-_Demo_Map" ID="ID_126539037" CREATED="1514982310783" MODIFIED="1514985712765"/>
<node TEXT="git init" ID="ID_816230331" CREATED="1511203646592" MODIFIED="1511203648681"/>
<node ID="ID_308086531" CREATED="1514981312399" MODIFIED="1516215651204"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre class="f5 js-zeroclipboard-target"><span class="user-select-contain">git remote add origin </span><span class="js-git-clone-help-text">https://github.com/viaa/MapToHtmlDoc.github.io.git</span></pre>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 Add this to the shell script, so that we don&apos;t need to initialize manually the directory" ID="ID_1019771023" CREATED="1514986249431" MODIFIED="1514986265102"/>
</node>
<node TEXT="Links" FOLDED="true" ID="ID_372610046" CREATED="1514984148071" MODIFIED="1514984149205">
<node ID="ID_301168726" CREATED="1514984149620" MODIFIED="1516215751249" LINK="https://github.com/viaa"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre class="f5 js-zeroclipboard-target"><span class="js-git-clone-help-text">https://github.com/viaa</span></pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Folders" FOLDED="true" ID="ID_1708567924" CREATED="1514984338536" MODIFIED="1514984354308">
<node TEXT="cd /d/GitHubWebsites/viaa/MapToHtmlDoc_-_Demo_Map" ID="ID_1126504038" CREATED="1514982310783" MODIFIED="1514985712765"/>
<node TEXT="Temp" FOLDED="true" ID="ID_1363824914" CREATED="1514984420041" MODIFIED="1514984420041" LINK="file:/C:/Temp/">
<node TEXT="MapToHtmlDoc" FOLDED="true" ID="ID_405494615" CREATED="1514984352113" MODIFIED="1514984352114" LINK="file:/C:/Temp/MapToHtmlDoc/">
<node TEXT="GitHubWebsites" FOLDED="true" ID="ID_492160916" CREATED="1514984382642" MODIFIED="1514984382642" LINK="file:/D:/GitHubWebsites/">
<node TEXT="viaa" FOLDED="true" ID="ID_496726707" CREATED="1514984404033" MODIFIED="1514985694296" LINK="file:/D:/GitHubWebsites/viaa/">
<node TEXT="MapToHtmlDoc_-_Demo_Map" ID="ID_628366295" CREATED="1514984411921" MODIFIED="1514985704904" LINK="file:/D:/GitHubWebsites/BankKartel/MapToHtmlDoc_-_Demo_Map/"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="Push" FOLDED="true" ID="ID_744600646" CREATED="1514984444566" MODIFIED="1514984445692">
<node TEXT="git add *" ID="ID_1338918515" CREATED="1511211568716" MODIFIED="1514984696634"/>
<node TEXT="git commit -am &apos;Page update&apos;" ID="ID_1100090380" CREATED="1514984498244" MODIFIED="1514984498244"/>
<node TEXT="git push &quot;https://alexandreviau%40gmail.com:Charlik2a@github.com/viaa/MapToHtmlDoc_-_Demo_Map.github.io.git&quot; master --force" ID="ID_921548659" CREATED="1514984523685" MODIFIED="1514986916699"/>
</node>
<node TEXT="Links" FOLDED="true" ID="ID_1827032793" CREATED="1514984748058" MODIFIED="1514984749131">
<node TEXT="https://viaa.github.io/MapToHtmlDoc_-_Demo_Map.github.io" FOLDED="true" ID="ID_1600419748" CREATED="1514984752457" MODIFIED="1514985780817" LINK="https://viaa.github.io/MapToHtmlDoc_-_Demo_Map.github.io">
<node TEXT="OR" FOLDED="true" ID="ID_696699472" CREATED="1514984963434" MODIFIED="1514984965727">
<node TEXT="https://viaa.github.io/MapToHtmlDoc_-_Demo_Map.github.io/MapToHtmlDoc_-_Demo_Map.html" ID="ID_1499099257" CREATED="1514984750166" MODIFIED="1514985831809" LINK="https://viaa.github.io/MapToHtmlDoc_-_Demo_Map.github.io/MapToHtmlDoc_-_Demo_Map.html"/>
</node>
</node>
</node>
<node TEXT="OLD" FOLDED="true" ID="ID_1246283732" CREATED="1511252274629" MODIFIED="1512547725006">
<node FOLDED="true" ID="ID_158036820" CREATED="1511212497050" MODIFIED="1511212497050" LINK="https://viaa.github.io/test.html"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://viaa.github.io/test.html
    </p>
  </body>
</html>
</richcontent>
<node TEXT="# 1" FOLDED="true" ID="ID_71791988" CREATED="1511212360128" MODIFIED="1511212434210">
<node TEXT="git add test.html" ID="ID_1046412118" CREATED="1511211568716" MODIFIED="1511212389244"/>
<node TEXT="git commit -m &apos;Initial commit&apos;" ID="ID_1234172540" CREATED="1511211359512" MODIFIED="1511211558787"/>
<node ID="ID_478024085" CREATED="1511203632260" MODIFIED="1511212430244"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre class="f5 js-zeroclipboard-target" style="font-family: SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace; font-size: 14px; margin-top: 0px; margin-bottom: 0px; color: rgb(36, 41, 46); font-style: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px"><span class="user-select-contain">git push -u <font color="#ff0000">viaa</font> master --force</span></pre>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="# Fix auhentication issue" FOLDED="true" ID="ID_986658104" CREATED="1511268959074" MODIFIED="1511268969931">
<node TEXT="git remote add origin git@github.com:BankKartel/BankKartel.github.io.git" ID="ID_1502893281" CREATED="1511268975823" MODIFIED="1511269080089"/>
<node TEXT="git remote -v" ID="ID_176237690" CREATED="1511268975819" MODIFIED="1511268975819"/>
<node TEXT="git remote remove BankKartel" ID="ID_1728568662" CREATED="1511268975819" MODIFIED="1511269125458"/>
<node TEXT="git remote remove BankKartel.github.io.git" ID="ID_1605336465" CREATED="1511268975819" MODIFIED="1511269328883"/>
</node>
<node TEXT="# Reinitialize (there was wrong username password)" FOLDED="true" ID="ID_1415532101" CREATED="1511222981459" MODIFIED="1511222995238">
<node TEXT="git remote set-url BankKartel https://github.com/BankKartel/BankKartel.github.io.git" ID="ID_306081143" CREATED="1511222997442" MODIFIED="1511223018501"/>
</node>
<node FOLDED="true" ID="ID_1810243703" CREATED="1511203632260" MODIFIED="1511264409323"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre class="f5 js-zeroclipboard-target" style="font-family: SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace; font-size: 14px; margin-top: 0px; margin-bottom: 0px; color: rgb(36, 41, 46); font-style: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px"><span class="user-select-contain">git push -u BankKartel master</span></pre>
  </body>
</html>
</richcontent>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      gultron@hotmail.com
    </p>
  </body>
</html>
</richcontent>
<node TEXT="" ID="ID_640451079" CREATED="1511222314080" MODIFIED="1511222314080"/>
</node>
<node TEXT="# Initialize" FOLDED="true" ID="ID_1099540640" CREATED="1511203602754" MODIFIED="1512547725006">
<node TEXT="cd /d/GitHubWebsites/BankKartel" ID="ID_1370379986" CREATED="1511203610727" MODIFIED="1511221698771"/>
<node TEXT="git init" ID="ID_1329118203" CREATED="1511203646592" MODIFIED="1511203648681"/>
<node ID="ID_1237026054" CREATED="1511203605776" MODIFIED="1511221691706"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre class="f5 js-zeroclipboard-target" style="font-family: SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace; font-size: 14px; margin-top: 0px; margin-bottom: 0px; color: rgb(36, 41, 46); font-style: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px"><span class="user-select-contain">git remote add BankKartel</span><span class="js-git-clone-help-text"> https://github.com/BankKartel/BankKartel.github.io.git</span></pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="# Upload" FOLDED="true" ID="ID_1997400177" CREATED="1511212350625" MODIFIED="1511257999996" BACKGROUND_COLOR="#ffff00">
<cloud COLOR="#99ffff" SHAPE="ARC"/>
<node TEXT="cp /c/temp/OrthodoxChristianity* /d/GitHubWebsites/BankKartel" ID="ID_511726983" CREATED="1511220257701" MODIFIED="1511221728407"/>
<node TEXT="cd /d/GitHubWebsites/BankKartel" ID="ID_660801380" CREATED="1511203610727" MODIFIED="1511221698771"/>
<node ID="ID_234347541" CREATED="1511211568716" MODIFIED="1511270866972"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      git add <font color="#ff0000">OrthodoxChristianity*</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="git commit -m &apos;Page update&apos;" ID="ID_1631225160" CREATED="1511211359512" MODIFIED="1511341133193"/>
<node ID="ID_1984208756" CREATED="1511203632260" MODIFIED="1511275910658"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre class="f5 js-zeroclipboard-target" style="font-family: SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace; font-size: 14px; margin-top: 0px; margin-bottom: 0px; color: rgb(36, 41, 46); font-style: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px"><span class="user-select-contain">git push -u BankKartel master --force</span></pre>
  </body>
</html>
</richcontent>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      gultron@hotmail.com
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="cp /c/temp/OrthodoxChristianity* /d/GitHubWebsites/BankKartel" ID="ID_1824075547" CREATED="1511220257701" MODIFIED="1511221728407"/>
<node TEXT="# Copy" ID="ID_1039892647" CREATED="1511270732690" MODIFIED="1511270734755"/>
<node TEXT="Folders" FOLDED="true" ID="ID_165894890" CREATED="1511220383830" MODIFIED="1511220387084">
<node TEXT="BankKartel" FOLDED="true" ID="ID_371151497" CREATED="1511220394399" MODIFIED="1511222091837" LINK="file:/D:/GitHubWebsites/BankKartel/">
<node TEXT="Files" ID="ID_1011765275" CREATED="1511222096189" MODIFIED="1511222096190" LINK="file:/D:/GitHubWebsites/BankKartel/Files/"/>
<node TEXT=".git" ID="ID_377869507" CREATED="1511222910562" MODIFIED="1511222910562" LINK="file:/D:/GitHubWebsites/BankKartel/.git/"/>
</node>
<node TEXT="Perso" FOLDED="true" ID="ID_722926077" CREATED="1511275485795" MODIFIED="1511275485795" LINK="file:/D:/Perso/">
<node TEXT="Orthodoxy" ID="ID_1519010965" CREATED="1511275503210" MODIFIED="1511275503210" LINK="file:/D:/Perso/Orthodoxy/"/>
</node>
</node>
<node TEXT="Links" FOLDED="true" ID="ID_179174382" CREATED="1511221174036" MODIFIED="1511221176016">
<node TEXT="Profile" ID="ID_394804425" CREATED="1511222707715" MODIFIED="1511222755416" LINK="https://github.com/BankKartel"/>
<node TEXT="https://BankKartel.github.io/OrthodoxChristianity.html" ID="ID_886318451" CREATED="1511221242235" MODIFIED="1512034713470" LINK="https://BankKartel.github.io/OrthodoxChristianity.html">
<icon BUILTIN="internet"/>
</node>
<node TEXT="https://BankKartel.github.io/OrthodoxChristianity.html" ID="ID_1877599038" CREATED="1511221242235" MODIFIED="1511221765093" LINK="https://BankKartel.github.io/OrthodoxChristianity.html"/>
<node ID="ID_1253938467" CREATED="1511222356920" MODIFIED="1511222356920" LINK="http://orthodoxchristianresources.blogspot.fr/"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a href="http://orthodoxchristianresources.blogspot.fr/">http://orthodoxchristianresources.blogspot.fr/</a>
  </body>
</html>
</richcontent>
</node>
<node TEXT="My Blogs (use the bookmarks toolbar, it makes blogging more easy)" ID="ID_881086886" CREATED="1511273364045" MODIFIED="1511273378915" LINK="file:/D:/Work/MindMaps/Bookmarks.mm#ID_659278175"/>
<node TEXT="Github Profile" FOLDED="true" ID="ID_1987908628" CREATED="1511222707715" MODIFIED="1512407736308" LINK="https://github.com/BankKartel" BACKGROUND_COLOR="#66ff00">
<node TEXT="OLD My Blogs (use the bookmarks toolbar, it makes blogging more easy)" ID="ID_632651640" CREATED="1511273364045" MODIFIED="1511991667360" LINK="file:/D:/Work/MindMaps/Bookmarks.mm#ID_659278175"/>
<node TEXT="Orthodox Christian Resources" ID="ID_1688745543" CREATED="1511288986718" MODIFIED="1511288986719" LINK="file:/D:/Work/MindMaps/Old/Projects/OLD/Blogs_Orthodox%20Christian%20Resources.mm#ID_1723255651"/>
</node>
</node>
<node TEXT="Github pages" FOLDED="true" ID="ID_327047891" CREATED="1511252223302" MODIFIED="1511257938143">
<cloud COLOR="#ccffff" SHAPE="ARC"/>
<node TEXT="Git" FOLDED="true" ID="ID_1351456244" CREATED="1511180959192" MODIFIED="1511253028935">
<node TEXT="OLD" FOLDED="true" ID="ID_1713268961" CREATED="1511252274629" MODIFIED="1511252275462">
<node FOLDED="true" ID="ID_1545516430" CREATED="1511212497050" MODIFIED="1511212497050" LINK="https://viaa.github.io/test.html"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://viaa.github.io/test.html
    </p>
  </body>
</html>
</richcontent>
<node TEXT="# 1" FOLDED="true" ID="ID_1650458533" CREATED="1511212360128" MODIFIED="1511212434210">
<node TEXT="git add test.html" ID="ID_75332215" CREATED="1511211568716" MODIFIED="1511212389244"/>
<node TEXT="git commit -m &apos;Initial commit&apos;" ID="ID_1840902893" CREATED="1511211359512" MODIFIED="1511211558787"/>
<node ID="ID_499592519" CREATED="1511203632260" MODIFIED="1511212430244"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre class="f5 js-zeroclipboard-target" style="font-family: SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace; font-size: 14px; margin-top: 0px; margin-bottom: 0px; color: rgb(36, 41, 46); font-style: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px"><span class="user-select-contain">git push -u <font color="#ff0000">viaa</font> master --force</span></pre>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="# Initialize" FOLDED="true" ID="ID_1539407671" CREATED="1511203602754" MODIFIED="1511252958424">
<node TEXT="git init" ID="ID_1089657004" CREATED="1511203646592" MODIFIED="1511203648681"/>
<node ID="ID_1831096075" CREATED="1511203605776" MODIFIED="1511211384454"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre class="f5 js-zeroclipboard-target" style="font-family: SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace; font-size: 14px; margin-top: 0px; margin-bottom: 0px; color: rgb(36, 41, 46); font-style: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px"><span class="user-select-contain">git remote add <font color="#ff0000">viaa</font> </span><span class="js-git-clone-help-text">https://github.com/<font color="#ff0000">viaa</font>/<font color="#ff0000">viaa</font>.github.io.git</span></pre>
  </body>
</html>
</richcontent>
</node>
<node TEXT="touch index.md" ID="ID_1725175445" CREATED="1511211563385" MODIFIED="1511211568468"/>
<node TEXT="git add index.md" ID="ID_461300748" CREATED="1511211568716" MODIFIED="1511211576725"/>
<node TEXT="git commit -m &apos;Initial commit&apos;" ID="ID_1062686359" CREATED="1511211359512" MODIFIED="1511211558787"/>
<node ID="ID_429798801" CREATED="1511203632260" MODIFIED="1511211586562"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre class="f5 js-zeroclipboard-target" style="font-family: SFMono-Regular, Consolas, Liberation Mono, Menlo, Courier, monospace; font-size: 14px; margin-top: 0px; margin-bottom: 0px; color: rgb(36, 41, 46); font-style: normal; font-weight: normal; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px"><span class="user-select-contain">git push -u <font color="#ff0000">viaa</font> master --force</span></pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="# Upload" FOLDED="true" ID="ID_524196982" CREATED="1511212350625" MODIFIED="1511257999996" BACKGROUND_COLOR="#ffff00">
<cloud COLOR="#99ffff" SHAPE="ARC"/>
<node TEXT="cp /c/Temp/MapToHtmlDoc_-_Demo_Map* /d/GitHubWebsites/viaa" ID="ID_257428937" CREATED="1511203610727" MODIFIED="1511894409515"/>
<node TEXT="cd /d/GitHubWebsites/viaa" ID="ID_612073317" CREATED="1511253151917" MODIFIED="1511253153399"/>
<node TEXT="git add MapToHtmlDoc_-_Demo_Map*" ID="ID_125348823" CREATED="1511211568716" MODIFIED="1511894413881"/>
<node TEXT="git commit -m &apos;Page update&apos;" ID="ID_537452778" CREATED="1511211359512" MODIFIED="1511341040952"/>
<node TEXT="    git push &quot;https://alexandreviau%40gmail.com@github.com/viaa/viaa.github.io.git&quot; master --force" ID="ID_918959905" CREATED="1511894267461" MODIFIED="1511894513971"/>
</node>
<node TEXT="Remove" ID="ID_824085987" CREATED="1512049268586" MODIFIED="1512049270140"/>
<node ID="ID_1976170194" CREATED="1511894267455" MODIFIED="1511894267455"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;cp /c/Temp/MapToHtmlDocDemoMap* /d/GitHubWebsites/viaa
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1057619277" CREATED="1511894267456" MODIFIED="1511894267456"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;cd /d/GitHubWebsites/viaa
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1828903479" CREATED="1511894267458" MODIFIED="1511894267458"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;git add MapToHtmlDocDemoMap*
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_575708398" CREATED="1511894267459" MODIFIED="1511894267459"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;git commit -m 'Page&#160;update'
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="# Copy" FOLDED="true" ID="ID_1151322858" CREATED="1511271127649" MODIFIED="1511271129939">
<node TEXT="cp /c/Temp/MapToHtmlDocDemoMap* /d/GitHubWebsites/viaa" ID="ID_1181496580" CREATED="1511203610727" MODIFIED="1511253133474"/>
</node>
<node TEXT="s0 Add delete of files in the folder" ID="ID_1497383173" CREATED="1511515530723" MODIFIED="1511515535856"/>
<node TEXT="HowTo" FOLDED="true" ID="ID_1745155518" CREATED="1511203156496" MODIFIED="1511203158184">
<node TEXT="file:/D:/GitHubWebsites/viaa/MapToHtmlDoc_-_Demo_Map.html" ID="ID_1568528242" CREATED="1511989032672" MODIFIED="1511989032672" LINK="file:/D:/GitHubWebsites/viaa/MapToHtmlDoc_-_Demo_Map.html"/>
<node TEXT="https://www.youtube.com/watch?v=3jt-J4Rc__M" ID="ID_1558523785" CREATED="1511203154232" MODIFIED="1511203154232" LINK="https://www.youtube.com/watch?v=3jt-J4Rc__M"/>
<node TEXT="https://guides.github.com/features/pages/" ID="ID_815736451" CREATED="1511212254450" MODIFIED="1511212254450" LINK="https://guides.github.com/features/pages/"/>
</node>
<node ID="ID_903807566" CREATED="1459638281712" MODIFIED="1512032772876" LINK="https://github.com/viaa/FreeplaneScripts">
<icon BUILTIN="internet"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://github.com/viaa/<font color="#ff0000">FreeplaneScripts</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Folders" FOLDED="true" ID="ID_1277631006" CREATED="1511252926293" MODIFIED="1511253023049">
<node TEXT="Temp" ID="ID_1346148829" CREATED="1511253019789" MODIFIED="1511253019790" LINK="file:/C:/Temp/"/>
<node TEXT="viaa" ID="ID_197871103" CREATED="1511253005381" MODIFIED="1511253005381" LINK="file:/D:/GitHubWebsites/viaa/"/>
</node>
<node TEXT="Links" FOLDED="true" ID="ID_359900307" CREATED="1511252906173" MODIFIED="1511252907870">
<node TEXT="https://viaa.github.io/MapToHtmlDoc_-_Demo_Map.html" ID="ID_1149562625" CREATED="1511212611461" MODIFIED="1512600930350" LINK="https://viaa.github.io/MapToHtmlDoc_-_Demo_Map.html" BACKGROUND_COLOR="#ffff00"/>
<node TEXT="FreeplaneScripts (upload the map .mm)" ID="ID_1949924066" CREATED="1511307312046" MODIFIED="1511307327633" LINK="file:/D:/Work/MindMaps/Commands.mm#ID_262304796"/>
<node ID="ID_68851427" CREATED="1459638281712" MODIFIED="1512032772876" LINK="https://github.com/viaa/FreeplaneScripts">
<icon BUILTIN="internet"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://github.com/viaa/<font color="#ff0000">FreeplaneScripts</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="https://viaa.github.io/MapToHtmlDoc_-_Demo_Map.html" ID="ID_1088468944" CREATED="1511989041058" MODIFIED="1512034628679" LINK="https://viaa.github.io/MapToHtmlDoc_-_Demo_Map.html">
<icon BUILTIN="internet"/>
</node>
<node TEXT="https://sourceforge.net/p/freeplane/discussion/758437/" FOLDED="true" ID="ID_1202276746" CREATED="1511989287933" MODIFIED="1511989420904" LINK="https://sourceforge.net/p/freeplane/discussion/758437/">
<icon BUILTIN="internet"/>
<node TEXT="https://sourceforge.net/p/freeplane/discussion/758437/thread/67f8576c/?page=3" ID="ID_1443494206" CREATED="1511989261936" MODIFIED="1511989442599" LINK="https://sourceforge.net/p/freeplane/discussion/758437/thread/67f8576c/?page=3">
<icon BUILTIN="internet"/>
</node>
</node>
<node TEXT="file:/D:/GitHubWebsites/viaa/MapToHtmlDoc_-_Demo_Map.html" ID="ID_1659416143" CREATED="1511989032672" MODIFIED="1511989032672" LINK="file:/D:/GitHubWebsites/viaa/MapToHtmlDoc_-_Demo_Map.html"/>
<node TEXT="https://viaa.github.io/MapToHtmlDoc_-_Demo_Map.html" ID="ID_136622126" CREATED="1511989041058" MODIFIED="1512034628679" LINK="https://viaa.github.io/MapToHtmlDoc_-_Demo_Map.html">
<icon BUILTIN="internet"/>
</node>
<node TEXT="https://viaa.github.io/MapToHtmlDoc_-_Demo_Map.html" ID="ID_720281073" CREATED="1511989041058" MODIFIED="1512034628679" LINK="https://viaa.github.io/MapToHtmlDoc_-_Demo_Map.html">
<icon BUILTIN="internet"/>
</node>
<node TEXT="Github Profile" ID="ID_1403371481" CREATED="1511222707715" MODIFIED="1512407736308" LINK="https://github.com/BankKartel" BACKGROUND_COLOR="#66ff00"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node TEXT="MyDocumentation" ID="ID_35550841" CREATED="1491376844393" MODIFIED="1502874578021" LINK="file:/D:/Work/MyDocumentation"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Documentation I create.
    </p>
    <p>
      Export to HTML (.html)
    </p>
  </body>
</html>
</richcontent>
<cloud COLOR="#f0f0f0" SHAPE="ARC"/>
<node FOLDED="true" ID="ID_1021239499" CREATED="1491377944091" MODIFIED="1491471738444"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s1 Todo
    </p>
  </body>
</html>
</richcontent>
<cloud COLOR="#ffffcc" SHAPE="ARC"/>
<node TEXT="Markdown (todo)" FOLDED="true" ID="ID_1177086229" CREATED="1511114975256" MODIFIED="1511176216670">
<font BOLD="true"/>
<node TEXT="To fix/Bugs" FOLDED="true" ID="ID_23184298" CREATED="1511174842259" MODIFIED="1511174901020">
<node ID="ID_1574634702" CREATED="1511432146697" MODIFIED="1511884131480"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 so I commented out the entire subsection containing the iconpath definition and the script executed exactly as it was supposed to.
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_57289573" CREATED="1511432156921" MODIFIED="1511884130112"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 There is another bit of code that I've had to manually change with each update because my installation doesn't like it. Its the bit defining Freeplane Paths. The script fails at the line defining the USER_PATH to the 1.6x freeplane directory. Doesn't like the line: def USER_PATH = 'C:/Users/' + System.getenv(&quot;USERNAME&quot;) + '/AppData/Roaming/Freeplane/1.6.x/'I have to replace the 'System.getenv(&quot;USERNAME&quot;)' with my hardcoded user name and then it works fine. The computer I'm using is Windows XP so more likely that's the problem rather than your system call.Thanks again,
    </p>
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_735069410" CREATED="1511308739512" MODIFIED="1511798288475"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Now there is a new problem determining if the link is a file or a folder... the tulip is not copied to out_dir.
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_745405694" CREATED="1511309025340" MODIFIED="1511798290551"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 else { // Is file or folder File fileTypeCheck = getFileFromPath(link) if (fileTypeCheck.exists()) { if (fileTypeCheck.listFiles() != null) hasFolderLink = true else hasFileLink = true }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="s0 Add documentation about git in this map" FOLDED="true" ID="ID_798208830" CREATED="1511262509545" MODIFIED="1511262521277">
<node TEXT="s0 But if I add git support in the script then I would not need to add a section because it will be another way of commiting." ID="ID_1728820964" CREATED="1511701912847" MODIFIED="1511701939958"/>
</node>
<node FOLDED="true" ID="ID_428391015" CREATED="1511174845059" MODIFIED="1511177411415"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 The TOC for large markdown file is not being inserted for some reason... to fix later
    </p>
  </body>
</html>
</richcontent>
<node TEXT="s0 Also the outtmp.md file is not deleted once the export is completed, I think this is linked to the TOC not being replaced" ID="ID_28626167" CREATED="1511177412471" MODIFIED="1511177436201"/>
</node>
</node>
<node TEXT="Errors" FOLDED="true" ID="ID_1437027431" CREATED="1511086485302" MODIFIED="1511086487116">
<node ID="ID_739265342" CREATED="1511086455109" MODIFIED="1511087767872"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 After section OUtlook emails there are **
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="The colors used in the html files.... this is in a gray box" ID="ID_1600025099" CREATED="1511086543612" MODIFIED="1511086556191"/>
</node>
<node TEXT="Features" FOLDED="true" ID="ID_1021586373" CREATED="1511086493299" MODIFIED="1511086495126">
<node ID="ID_1184428449" CREATED="1511086764234" MODIFIED="1511089285787"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 images details
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_776986987" CREATED="1511086654349" MODIFIED="1511089287587"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Node details in italic
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_347693283" CREATED="1511086673525" MODIFIED="1511090702719"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Link to url
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1918459113" CREATED="1511086666934" MODIFIED="1511090703689"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Link to folder
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_468244839" CREATED="1511086398033" MODIFIED="1511092574636"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 - links in page (pdf creation)
    </p>
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_780285100" CREATED="1511086698370" MODIFIED="1511104134949"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s1 Node notes
    </p>
  </body>
</html>
</richcontent>
<node TEXT="s0 I should fix the &lt; and &gt; and other chars... then encoding and decoding function don&apos;t do it, I should do a function." ID="ID_570967045" CREATED="1511104143579" MODIFIED="1511104147193"/>
</node>
<node ID="ID_696265762" CREATED="1511086613940" MODIFIED="1511107490283"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Insert file linked (hosts file)
    </p>
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_758349647" CREATED="1511086398032" MODIFIED="1511114888953"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 - Icons
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_74025538" CREATED="1511108943291" MODIFIED="1511109572657"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Copy locally
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node ID="ID_1230449261" CREATED="1511086795230" MODIFIED="1511119614115"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Attributes
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_619770883" CREATED="1511086433987" MODIFIED="1511120732623"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Connectors
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1605099662" CREATED="1511086601982" MODIFIED="1511120970914"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Indenting of nodes
    </p>
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_1275692537" CREATED="1511089074689" MODIFIED="1511126226966"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s1 markdown large file
    </p>
  </body>
</html>
</richcontent>
<node TEXT="s0 The TOC doesn&apos;t show in large file mode for some reason, fix that...." ID="ID_1516577292" CREATED="1511126229230" MODIFIED="1511701961500">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_28626167" STARTINCLINATION="642;0;" ENDINCLINATION="642;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
</node>
</node>
<node TEXT="To Add" FOLDED="true" ID="ID_1899804574" CREATED="1511086816419" MODIFIED="1511086818332">
<node TEXT="This is indented and in a gray box:" FOLDED="true" ID="ID_1081663146" CREATED="1511106577431" MODIFIED="1511106583943">
<node ID="ID_769746535" CREATED="1511106575461" MODIFIED="1511115024213"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 The colors used in the html files are the same as used in this map
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node ID="ID_1357313760" CREATED="1511087821487" MODIFIED="1511115711450"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Constant (implement) if MARKDOWN
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1573666877" CREATED="1511087847011" MODIFIED="1511119005346"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Constant (if HTML)
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1983617963" CREATED="1511086819104" MODIFIED="1511115024203"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 Add section to demo that any files are copied locally if linked
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_78404471" CREATED="1511086902810" MODIFIED="1511115024203"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 a name links with markdown synxtax (optional change to aname)
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1622306324" CREATED="1511092636049" MODIFIED="1511115024203"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 Say that auto-indentation works only in html not in markdown
    </p>
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_892945841" CREATED="1511174852987" MODIFIED="1511884162098"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Add youtube video support
    </p>
  </body>
</html>
</richcontent>
<node TEXT="[![IMAGE ALT TEXT HERE](http://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg)](http://www.youtube.com/watch?v=YOUTUBE_VIDEO_ID_HERE)" ID="ID_109838976" CREATED="1511093106659" MODIFIED="1511093106659"/>
</node>
<node ID="ID_840236089" CREATED="1511174860251" MODIFIED="1511884164784"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Add web images support
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="s0 Add topic collapse and image collapse like on this site" FOLDED="true" ID="ID_256887588" CREATED="1525963831817" MODIFIED="1525963851466">
<node TEXT="https://vifm.info/" ID="ID_1140361734" CREATED="1525963848037" MODIFIED="1525963848037" LINK="https://vifm.info/"/>
<node TEXT="Vifm.htm" ID="ID_772166798" CREATED="1525963858747" MODIFIED="1525963858748" LINK="file:/D:/Temp/Vifm.htm"/>
</node>
<node TEXT="s0 In the breadcrumbs there should not be the &lt; for the first section or it should bring to the toc" ID="ID_1245168698" CREATED="1523454298083" MODIFIED="1523454332220"/>
<node TEXT="s0 Add css styles to avoid that the hr are broken on the previous page and not with the section h2 on the following page, I should add a div to keep all this together." ID="ID_263145359" CREATED="1522914842056" MODIFIED="1522914890509"/>
<node TEXT="s0 Add clouds" ID="ID_1434340028" CREATED="1518080616781" MODIFIED="1518080619864"/>
<node TEXT="s0 Don&apos;t render the latex formula to image if the node is a title (h1, h2, h3, h4) because they images are not displayed at these levels anyway." ID="ID_112880125" CREATED="1518698232048" MODIFIED="1518698278739"/>
<node TEXT="s0 Upload to gitbub deactivated for now.... I should fix the shell script as files from other repositories get mixed up in other repositories, and also files from other branches exported as htmldoc........." ID="ID_833389119" CREATED="1514551931461" MODIFIED="1514551997529">
<font SIZE="18"/>
</node>
<node TEXT="s0 Add that videos are displayed as videos (embedded) only if they have a video icon, so that otherwise they are dipslayed as links." FOLDED="true" ID="ID_428109722" CREATED="1514546135584" MODIFIED="1514546186470">
<node TEXT="s0 Do same for images?" ID="ID_1199490296" CREATED="1514547661104" MODIFIED="1514547666047"/>
<node TEXT="s0 I could also do the opposite, to have them displayed by default, but if a link icon is put then they are displayed as link." ID="ID_120776661" CREATED="1514547667967" MODIFIED="1514547700414"/>
</node>
<node TEXT="s0 I cannot link a groovy script from the web because the script tries to include its code in the note.... maybe don&apos;t do that for groovy files on the web? or put an icon to exlude them" ID="ID_1994479272" CREATED="1513759033335" MODIFIED="1513759074441"/>
<node TEXT="s0 Add the possibility to add tables in the notes, and display them in the redered html" ID="ID_1082041988" CREATED="1516790329613" MODIFIED="1516790348892"/>
<node TEXT="s0 Instead of replacing the * by &lt;li&gt; tag, replace it by the • character." ID="ID_1855477077" CREATED="1516205244440" MODIFIED="1516205274144"/>
<node TEXT="s0 Colors are not working in details." ID="ID_604518310" CREATED="1523440981611" MODIFIED="1523440989560"/>
<node FOLDED="true" ID="ID_1465741372" CREATED="1511886736214" MODIFIED="1511992763067"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Use jGit to push the map to repo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="http://www.codeaffine.com/2015/12/15/getting-started-with-jgit/" ID="ID_1921590087" CREATED="1511886757214" MODIFIED="1511886757214" LINK="http://www.codeaffine.com/2015/12/15/getting-started-with-jgit/"/>
<node TEXT="https://stackoverflow.com/questions/13446842/how-do-i-do-git-push-with-jgit" FOLDED="true" ID="ID_189531157" CREATED="1511886761642" MODIFIED="1511886761642" LINK="https://stackoverflow.com/questions/13446842/how-do-i-do-git-push-with-jgit">
<node TEXT="   Repository localRepo = new FileRepository(localPath);&#xa;    Git git = new Git(localRepo);&#xa;&#xa;    // add remote repo:&#xa;    RemoteAddCommand remoteAddCommand = git.remoteAdd();&#xa;    remoteAddCommand.setName(&quot;origin&quot;);&#xa;    remoteAddCommand.setUri(new URIish(httpUrl));&#xa;    // you can add more settings here if needed&#xa;    remoteAddCommand.call();&#xa;&#xa;    // push to remote:&#xa;    PushCommand pushCommand = git.push();&#xa;    pushCommand.setCredentialsProvider(new UsernamePasswordCredentialsProvider(&quot;username&quot;, &quot;password&quot;));&#xa;    // you can add more settings here if needed&#xa;    pushCommand.call();" ID="ID_1443250626" CREATED="1511886834631" MODIFIED="1511886835800"/>
</node>
<node TEXT="Projects" FOLDED="true" ID="ID_1773579815" CREATED="1511886939391" MODIFIED="1511886939392" LINK="file:/D:/Projects/">
<node TEXT="org.eclipse.jgit-4.9.0.201710071750-r.jar" ID="ID_321567434" CREATED="1511886943889" MODIFIED="1511886943889" LINK="file:/D:/Projects/org.eclipse.jgit-4.9.0.201710071750-r.jar"/>
</node>
</node>
<node TEXT="Style" FOLDED="true" ID="ID_206691156" CREATED="1512420370026" MODIFIED="1512420371831">
<node TEXT="class MindMapHTMLWriter {" ID="ID_1157382084" CREATED="1512419146538" MODIFIED="1512420372234"/>
<node ID="ID_613509885" CREATED="1512420985420" MODIFIED="1512420985420"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre class="code" style="font-family: monospace, Courier; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; color: rgb(0, 0, 0); background-color: rgb(249, 249, 249); line-height: 1.1em; font-size: 12.7px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px">resultNode.<span class="me1" style="color: rgb(0, 102, 0)"><font color="rgb(0, 102, 0)">style</font></span>.<span class="me1" style="color: rgb(0, 102, 0)"><font color="rgb(0, 102, 0)">backgroundColorCode</font></span> = <span class="st0" style="color: rgb(255, 0, 0)"><font color="rgb(255, 0, 0)">'#FFFF00'</font></span></pre>
  </body>
</html>
</richcontent>
</node>
<node TEXT="node.style.font.bold = 0" FOLDED="true" ID="ID_1830609919" CREATED="1512421023128" MODIFIED="1512421023128">
<node TEXT="node.style.setTextColorCode(nodeTextColor)" ID="ID_1182764927" CREATED="1512421023128" MODIFIED="1512421023128"/>
<node TEXT="node.style.setBackgroundColorCode(nodeBgColor)" ID="ID_1649309644" CREATED="1512421023128" MODIFIED="1512421023128"/>
<node TEXT="node.style.font.size = nodeFontSize" ID="ID_987537065" CREATED="1512421023128" MODIFIED="1512421023128"/>
<node TEXT="node.style.edge.setColorCode(edgeColor)" ID="ID_1520518488" CREATED="1512421023128" MODIFIED="1512421023128"/>
</node>
<node ID="ID_23205470" CREATED="1512421115486" MODIFIED="1512421115486"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre class="code" style="font-family: monospace, Courier; padding-top: 0; padding-right: 0; padding-bottom: 0; padding-left: 0; color: rgb(0, 0, 0); background-color: rgb(249, 249, 249); line-height: 1.1em; font-size: 12.7px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px"> it.<span class="me1" style="color: rgb(0, 102, 0)"><font color="rgb(0, 102, 0)">style</font></span>.<span class="me1" style="color: rgb(0, 102, 0)"><font color="rgb(0, 102, 0)">nodeTextColor</font></span> = java.<span class="me1" style="color: rgb(0, 102, 0)"><font color="rgb(0, 102, 0)">awt</font></span>.<span class="kw3" style="color: rgb(170, 170, 221); font-weight: bold"><font color="rgb(170, 170, 221)"><b>Color</b></font></span>.<span class="me1" style="color: rgb(0, 102, 0)"><font color="rgb(0, 102, 0)">BLUE</font></span></pre>
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_1448007675" CREATED="1523077051532" MODIFIED="1523082254016"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 A connector link was not working when in PDF for some reason (from the workflow stats pdf at the end of the document, now changed) check for that maybe.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="It is a problem with princexml, because when converted with Chrome to pdf it works." ID="ID_777875093" CREATED="1523082256101" MODIFIED="1523082288919">
<font BOLD="true"/>
</node>
<node ID="ID_666338645" CREATED="1523079477277" MODIFIED="1523082301834"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 It seems to be because of the pre tag that is after the 
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_904890316" CREATED="1523079835205" MODIFIED="1523082301844"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 So that mean that links to notes (with code etc, with pre) will not work in PDF... (to test)
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1463507967" CREATED="1523080219449" MODIFIED="1523082301844"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 It is not only connector links but even links done with f9 are not working when linked to nodes with notes. So for now link it to a parent node maybe.
    </p>
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_338716715" CREATED="1523078504498" MODIFIED="1523082301844" LINK="file:/D:/Temp/Interplay_MAM_-_Workflo.html"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Interplay_MAM_-_Workflo.html
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Interplay_MAM_-_Workflo.pdf" ID="ID_821613510" CREATED="1523078504502" MODIFIED="1523078504502" LINK="file:/D:/Temp/Interplay_MAM_-_Workflo.pdf"/>
</node>
<node FOLDED="true" ID="ID_1904607786" CREATED="1523077537734" MODIFIED="1523082301844"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 The tags are broken as seen in this example in PDF, so fix that:
    </p>
  </body>
</html>
</richcontent>
<node TEXT="&lt;small&gt;&lt;a href=&quot;#ID_273653473&quot;&gt;&lt; Documentation&lt;/a&gt;&lt;/small&gt; &lt;i&gt;&lt;small&gt;This section&lt;---[The End]---Documentation{/MapToHtmlDoc - Demo Map/History/Documentation}&lt;/small&gt;&lt;/i&gt;&lt;br&gt;" ID="ID_582796779" CREATED="1523077532776" MODIFIED="1523077532776"/>
</node>
</node>
<node ID="ID_1603327433" CREATED="1523454974099" MODIFIED="1523456275376"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 If the first nodes in the map were IGNORE, OLD etc (ignored nodes) then the breadcrumbs will have a in the first section (but it should not) and clicking this will do noting... so I should modify the breadcrumb function not to put this in this case. The workaround is to remove these nodes and write again IGNORE in a new node, so that it will not be a node preceding others.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 Add an icon to the root node to tell if the document will be converted to pdf." ID="ID_1292122904" CREATED="1512601016793" MODIFIED="1512601061737"/>
<node TEXT="s0 There seems to be a conflict when adding both the CSS formatting and the html formatting using the dialog. I will try to resolved that later." ID="ID_1771968082" CREATED="1512600522909" MODIFIED="1512600566956"/>
<node TEXT="s0 The formatting in the details (using the dialog) dosen&apos;t work" ID="ID_1029798927" CREATED="1512600503224" MODIFIED="1512600521273"/>
<node TEXT="s0 Do a function that converts text style (even to background to span? to css style or html font style" ID="ID_953641032" CREATED="1512497852643" MODIFIED="1512497892990"/>
</node>
<node TEXT="s0 If a list item is the last of the section it is very closed to the hr separator..." ID="ID_1741009248" CREATED="1512580482363" MODIFIED="1512580502492"/>
<node TEXT="s0 Maybe add a variable for the temp directory in the shell script so the user don&apos;t have to risk to do a mistake" ID="ID_294986917" CREATED="1512396679870" MODIFIED="1512396705423"/>
<node TEXT="s0 There is a big problem with uploading to github, it uploads files from viaa to bankkartel and vice versa and also files from cases if I was displaying branches as dochtml.... so fix that before using again the upload to github... I will dactivate it for now." ID="ID_277011568" CREATED="1514550522348" MODIFIED="1514550589385"/>
<node TEXT="s0 Maybe add folding like this?" FOLDED="true" ID="ID_1041786058" CREATED="1512031142212" MODIFIED="1512031147126">
<node TEXT="https://vifm.info/" ID="ID_1191358411" CREATED="1512031140215" MODIFIED="1512031140215" LINK="https://vifm.info/"/>
</node>
<node TEXT="s0 Maybe use another temp dir because misc temp files are sent to github" ID="ID_734481246" CREATED="1512049998138" MODIFIED="1512050019500"/>
<node TEXT="s0 Truncate the text for the automatic links created for connectors.... if a paragraph is connected then the text of the link is very long." ID="ID_210531019" CREATED="1513598370247" MODIFIED="1513598413842"/>
<node TEXT="s0 Check why, if there are 2 empty titles h3, h4 for example, there are still 2 lines added... it seems i fixed that." ID="ID_696451711" CREATED="1511992767017" MODIFIED="1511992797784"/>
<node TEXT="s0 The name of the file generated and it&apos;s linked images and files should not be the name of the map because it could be a branch, so use the name of the branchRoot" ID="ID_1791580195" CREATED="1511799954714" MODIFIED="1511799999398"/>
<node ID="ID_1597786103" CREATED="1511799075043" MODIFIED="1511799496270"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Before text in image core text there are 2 lines of spacing... fix that.
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_613458842" CREATED="1511795714026" MODIFIED="1511797209265"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 The breadcrumb paths are generated until the root node even if the document is generated from a branch.... this should be fixed..!! I think I should pass the branchRootNode
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 Why when adding a icon to an image, the icon is added after the image? It should be before?" ID="ID_1043731737" CREATED="1511795845883" MODIFIED="1511795869253"/>
<node TEXT="https://jira.atlassian.com/secure/WikiRendererHelpAction.jspa?section=all" FOLDED="true" ID="ID_1970449073" CREATED="1511795013021" MODIFIED="1511795013021" LINK="https://jira.atlassian.com/secure/WikiRendererHelpAction.jspa?section=all">
<node TEXT="s0 Try to adapt markdown also for the JIRA syntax" ID="ID_718626163" CREATED="1511795019331" MODIFIED="1511795031556"/>
</node>
<node ID="ID_708440136" CREATED="1511515067464" MODIFIED="1511515072023"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 Eventually I was thinking to add the posibility to some of the constants from the script using attributes in the current node of the map (root note or another).
    </p>
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_310534831" CREATED="1511346788762" MODIFIED="1512497731970"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Support CSS and have the current style as default, and maybe I could put CSS in IGNORE nodes and some STYLE nodes, if the script finds this then it will include it to the output document, so no external CSS file, then I could change style by putting the STYLE node to an INGORE node and put another STYLE node not in the IGNORE section.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="One is CSS support. I have this idea that a branch with CSS code would be move around in and out an IGNORE node to activate the style or remove it. Multiple CSS branches could be in the map and would be combined if out of an ignored node. These branches could be copied to another map. So there would not be dependance on external .css file but if there is one available then I guess it could be used the html document." ID="ID_1385470425" CREATED="1511367206517" MODIFIED="1511367206517"/>
<node TEXT="The current style with the Freeplane colors would be the default style." ID="ID_83721252" CREATED="1511367206517" MODIFIED="1511367206517"/>
</node>
<node TEXT="s0 Maybe put breadcrumbs for the connectors path display? So to display these paths as breadcrumbs?" ID="ID_1502427415" CREATED="1511345332667" MODIFIED="1511345371805"/>
<node ID="ID_1364566399" CREATED="1511304635966" MODIFIED="1511305814122"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 I will try to integrate other video sites like dailymotions, vimeo etc later. I didn't try them yet.
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1964492864" CREATED="1511280856102" MODIFIED="1511282554128"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 When adding icons to links it adds a space to the text at the beginning and it do the link more long.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 When displayed as link the text does not show, we should see it." ID="ID_1105469977" CREATED="1511218488599" MODIFIED="1511218514547"/>
<node TEXT="s0 Icons for markdown are not yet for all type of nodes, like they are not for links yet... not added... because it should be added for each..as for html it is added with the html text is added..." ID="ID_459667577" CREATED="1511114905344" MODIFIED="1511114946844"/>
<node ID="ID_553514326" CREATED="1511092392220" MODIFIED="1511092430111"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 I have removed aname to details, and i see it is for links also.... see if this is useful
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 Continue the test.groovy script to include nodes from another map, and add the precision that a map should be included at a certain node id only." ID="ID_128473865" CREATED="1509643961119" MODIFIED="1509643997161"/>
<node ID="ID_188031429" CREATED="1510742580779" MODIFIED="1511119065479"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 For markdown I will need to copy the files locally and put no path so that I see them. So I think the best is to avec some code to copy all images to the same directory as the out.html file and rename those in the moving process to the mapname + ID of the node so there will not be issues with images already existing.
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1519953105" CREATED="1510673251618" MODIFIED="1511119074334"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 There is an issue when the page is copied to blogger, all the text has mouseover hyperlink in red.... and this is when I copy/paste directly the html, if I copy the webpage directly (not the source) then the links point to c:/temp/out.html....
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 Maybe the connectors should be added according to the arrows" ID="ID_1343916894" CREATED="1510672445794" MODIFIED="1510672467932"/>
<node TEXT="s0 The notes have an indenting issue with the slashes, so if at the top of a note there are // then the text under will be all indented... The problem is this line:" FOLDED="true" ID="ID_622917513" CREATED="1510566344295" MODIFIED="1510566821651">
<node TEXT="rawNote = rawNote.replaceAll(&apos;\\n\\s*?\\n\\s*?\\n&apos;, &apos;\n&apos;) // Remove multiple empty lines" ID="ID_1611950920" CREATED="1510566822194" MODIFIED="1510566822194"/>
</node>
<node TEXT="s0 Export as markdown also maybe don&apos;t mix the code and put it at the end?..." ID="ID_117007128" CREATED="1510650345440" MODIFIED="1510650382004"/>
<node TEXT="s0 Maybe fix the formatting so that it takes style formatting and format using the format panel?" ID="ID_1141923887" CREATED="1510306437120" MODIFIED="1510306463643"/>
<node TEXT="s0 Add a new feature: Content identification. So this will add for example an image icon near the menu links in the toc where images are found in the document and also a number (3) for example near to tell that they are 3 images. And do that also with notes or files included, connectors (with the plug icon). This should be enabled and disabled using a constant." FOLDED="true" ID="ID_1514853016" CREATED="1510306464157" MODIFIED="1510306613550">
<node TEXT="s0 Maybe it could show the number of nodes in the section and the total length of the sections nodes." ID="ID_460071353" CREATED="1510306695266" MODIFIED="1510306730547"/>
</node>
<node TEXT="s0 Modify the connectors so that if there is both arrows then add both links, and basically just add the link where there is arrow (at the opposite)" ID="ID_691943370" CREATED="1510177668364" MODIFIED="1510177718980"/>
<node TEXT="s0 Check why there is no indentation in the notes if I put some in the map. In the map note there is but not in the html gray box." ID="ID_498865818" CREATED="1510155275081" MODIFIED="1510155299667"/>
<node TEXT="s0 If the node level is change with the feature to change the node level, it is still the old path that is shown in the breadcrumb, maybe change that...?" ID="ID_590180315" CREATED="1510140552358" MODIFIED="1510140582056"/>
<node ID="ID_724005350" CREATED="1510136345466" MODIFIED="1510139768685"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Add the paths to each h2, h3 and maybe h4 (do like small italic like I did for the connectors, use the same function to truncate the text). And put each parts of the path as a link to be clicked so the path would be a sequence of links to all its levels.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 Add the export to markdown (optional using a constant) .md file" ID="ID_1158030717" CREATED="1509629454575" MODIFIED="1509629496048"/>
<node ID="ID_828298373" CREATED="1508331589816" MODIFIED="1508339871843"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 If level 3 is not there (empty) for example, there shouldn't be an extra empty line in the html..
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 Make the formatting work also when the format is changed with the format toolbar or the format panel." FOLDED="true" ID="ID_170672124" CREATED="1508225422304" MODIFIED="1508225446197">
<node ID="ID_1188639693" CREATED="1508926255322" MODIFIED="1508926255322"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 10px; padding-bottom: 0; padding-left: 10px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(255,; background-position: 255, 255); background-image: null; background-repeat: repeat; background-attachment: scroll; color: rgb(85, 85, 85); font-family: sans-serif; font-style: normal; font-weight: normal; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px">
      I did a test and the formatting done by the format panel is different from the formating done by the Edit node core in dialog.
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_188051481" CREATED="1508926255323" MODIFIED="1508926290067"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p style="margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 10px; padding-bottom: 0; padding-left: 10px; border-top-style: none; border-top-width: 0px; border-right-style: none; border-right-width: 0px; border-bottom-style: none; border-bottom-width: 0px; border-left-style: none; border-left-width: 0px; font-size: 13px; vertical-align: baseline; background-color: rgb(255,; background-position: 255, 255); background-image: null; background-repeat: repeat; background-attachment: scroll; color: rgb(85, 85, 85); font-family: sans-serif; font-style: normal; font-weight: normal; letter-spacing: normal; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; word-spacing: 0px">
      The Edit node core in dialog generate a richcontent tag which contains basically a html document. The script extracts the html from it and inserts it in the output document. But it cannot do that with the formatting from the panel because it is not html. So some kind of conversion would need to be done or <b><u>maybe freeplane as something available already, I would need to check for that.</u></b>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="s0 Add css stylesheets to get same style as freeplane wiki/wikipedia and avid kb" FOLDED="true" ID="ID_163456607" CREATED="1508929803515" MODIFIED="1508929827518">
<node TEXT="s0 Use CSS... but have a default style like the map? Generate CSS code from the script to have everything in the script." ID="ID_331635655" CREATED="1509544122210" MODIFIED="1509544169660"/>
</node>
<node TEXT="s0 Check the numberingEnabled property in the api, maybe the sections could be numbered optionnaly" ID="ID_388254190" CREATED="1508261461420" MODIFIED="1508261496789"/>
<node TEXT="s0 Add connectors as links with a section with connectors from, and a section connectors to." ID="ID_1322503317" CREATED="1508246506100" MODIFIED="1508246540014"/>
<node TEXT="s0 Add the possibility to have relative paths" ID="ID_1431484756" CREATED="1508222412366" MODIFIED="1508222425546"/>
<node TEXT="s0 Maybe add images at h1, h2, h3, h4 levels?" ID="ID_686943658" CREATED="1508222426495" MODIFIED="1508222437395"/>
<node TEXT="s0 For the node-change icon feature, add an icon that would change the node to a node that that is below level 4, so level 5+... so a node at Level 2 could be change to a simple node 5+ for example." ID="ID_804260926" CREATED="1508156757197" MODIFIED="1508156816087"/>
<node TEXT="s0 Add support for SVG files?" ID="ID_508838701" CREATED="1508156730474" MODIFIED="1508156756510"/>
<node ID="ID_757933509" CREATED="1508096475993" MODIFIED="1508236650348"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Some blue titles have 2 times the spacing after the table of contents link, try to find why
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 Maybe get plainText or getRawText instead of my own function to get raw text." FOLDED="true" ID="ID_695176146" CREATED="1508094008095" MODIFIED="1508094030656">
<node TEXT="s0 Also maybe use the freeplane logging function instead of my own debug function." ID="ID_204257375" CREATED="1508094151038" MODIFIED="1508094172707"/>
<node TEXT="s0 There are also functions to get text from html... so maybe this instead of rawNote...?" ID="ID_1506095464" CREATED="1508094076529" MODIFIED="1508094104909"/>
</node>
<node ID="ID_16701693" CREATED="1507919916831" MODIFIED="1507919953466"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 Put the name of the map as output name file? and the path to the map? Put this optional or to have it to c:\temp\out.html
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1997008504" CREATED="1507809514788" MODIFIED="1508236663414"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Add some special chars like #, =, - (or icons) to indicate that a node can become a h1, h2 or h3, and also add an additional char (or icons) to tell the script NOT to make the current node a header (h1, h2, h3) but if it contains the special char above then it could become another header... like for example if the current node is at h1 level, and the char = would be placed there it would become a level 2 (for example).
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 After the &lt;li&gt; tags that have details there is 1 &lt;BR&gt; too much if for example a &lt;h4&gt; is following, then there are like 2 lines of spacing instead of 1. Try to fix that. Maybe use &lt;ul&gt; tags..?" ID="ID_157984181" CREATED="1507758060574" MODIFIED="1507758190449"/>
<node ID="ID_1997772567" CREATED="1507715785689" MODIFIED="1507758058885"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Add a constant to specify if we want to use the memory or a file as a method to output the html.
    </p>
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_1979560022" CREATED="1491381602871" MODIFIED="1492507259075"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Maybe do my own xslt? Or do a groovy script that exports to html... shouldn't be hard to do...
    </p>
  </body>
</html>
</richcontent>
<font SIZE="18"/>
<node ID="ID_548832419" CREATED="1491383791857" MODIFIED="1491471593750"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Create each node as ul and li, and base myself on the exported html and css from the export to HTML (.html)
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_580022222" CREATED="1491377860179" MODIFIED="1491857866421"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Show the exported images, for now only the name is exported, so I have to use a predefined image folder, or to export as links to file then convert the links (if images) to <img tags="#DEFAULT" in="#DEFAULT" html="#DEFAULT"/>
    </p>
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_1385998716" CREATED="1491377909323" MODIFIED="1491857861013"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Generate a table of content?
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_779394513" CREATED="1491385485688" MODIFIED="1491857865236"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Handle the links from one node to another but in html
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node ID="ID_625716666" CREATED="1491377922616" MODIFIED="1491857871115"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Put spacing and
    </p>
    <hr/>
    to divide sections
  </body>
</html>
</richcontent>
</node>
<node ID="ID_175486166" CREATED="1491379369047" MODIFIED="1491857874463"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Do a postprocessing to add the gray box to tags when it is code if I set the node background to gray?
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_577299906" CREATED="1491381530678" MODIFIED="1491857880208"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 I could also add links to files (like code files) and these will be included at postprocessing.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 It would be great if I could use groovy to convert all map in a folder to a website, so there would be some kind of index or menu and links to maps (sub sites)..." ID="ID_1045386746" CREATED="1491385414946" MODIFIED="1491385464244"/>
<node ID="ID_1921028076" CREATED="1491385547688" MODIFIED="1491471627517"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Handle formats, so that for example if a node has a background color then it should have it also in html.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 Once the HTML export is done, make sure it converts nice in PDF using prince xml." FOLDED="true" ID="ID_1527205181" CREATED="1491385782079" MODIFIED="1491385805485">
<node TEXT="s0 The export to pdf is not nice, the pre statements are not wrapped.... check for that maybe..." FOLDED="true" ID="ID_1214898974" CREATED="1491379876748" MODIFIED="1491379893839">
<node TEXT="Try this maybe" FOLDED="true" ID="ID_1375656472" CREATED="1491379956510" MODIFIED="1491379959156">
<node TEXT="pre {&#xa;    white-space: pre-wrap;       /* Since CSS 2.1 */&#xa;    white-space: -moz-pre-wrap;  /* Mozilla, since 1999 */&#xa;    white-space: -pre-wrap;      /* Opera 4-6 */&#xa;    white-space: -o-pre-wrap;    /* Opera 7 */&#xa;    word-wrap: break-word;       /* Internet Explorer 5.5+ */&#xa;}" ID="ID_1993698142" CREATED="1491379960061" MODIFIED="1491379960765"/>
</node>
</node>
</node>
<node TEXT="// Todo" FOLDED="true" ID="ID_1211613002" CREATED="1491506376553" MODIFIED="1492507259073">
<node TEXT="s0 Main todos" FOLDED="true" ID="ID_1533377108" CREATED="1491561047413" MODIFIED="1491561050179">
<node TEXT="The groovy script to export to html should" FOLDED="true" ID="ID_1435406502" CREATED="1492506676658" MODIFIED="1492506676658">
<node FOLDED="true" ID="ID_1596859414" CREATED="1492506676658" MODIFIED="1492506704806"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 Copy to clipboard or to a text file the escalation to paste with correct end of lines.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="For now the function fu! g:SetStatement() in vimrcwin seems to process the pasted SET maps ok for pasting in the cases, so it is not a priority for now." ID="ID_1855658727" CREATED="1492690818352" MODIFIED="1492690869973"/>
</node>
<node ID="ID_1597556947" CREATED="1492506676658" MODIFIED="1492506706214"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 Use an html template
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="s0 Faire un template html et le mettre comme constante dans le script, et mettre des section du template dans d&apos;autres constante, et utiliser ces variables avec des replace au lieu de contactener... peut-etre utiliser des fonctions aussi qui remplacerait le template... faire un template sur disque avant au moins et au mieux peut-etre mettre template dans le rapport des templates freeplane? je pourrais en avoir plusieurs... et en telecharger?" ID="ID_303061059" CREATED="1492166316886" MODIFIED="1492166489147"/>
<node TEXT="s0 I cannot put the text in red, notably in the text of an image... the text and some html code will appear after the image and the source will be broken.." ID="ID_1756131647" CREATED="1491818426407" MODIFIED="1491818462752"/>
<node ID="ID_1249623574" CREATED="1491570801410" MODIFIED="1491857905163"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Add a maximum size (in html) so that they are not too big specially for the pdf because it goes out of the page on the right
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_683394279" CREATED="1491564700642" MODIFIED="1491594860332"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Maybe add core text of images inserted as a paragraph before? Then if I would add descriptions to images I would see it.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 Don&apos;t use an external batch file to remove the logo... try to make it work directly from groovy." ID="ID_115759923" CREATED="1491561606317" MODIFIED="1491561627231"/>
<node TEXT="s0 Add the page numbers and toc with page numbers for print view (so once the pdf is generated by prince)" ID="ID_1327439285" CREATED="1491561003893" MODIFIED="1491561039421"/>
<node ID="ID_453706837" CREATED="1491561067453" MODIFIED="1492070913475"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 All nodes that are inserted beyond the 4th level of depth would become a u&gt; or ol item
    </p>
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_1762569686" CREATED="1491576573950" MODIFIED="1491577071478"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Add several kind of styles for the hr tag and add some of them to further divide h3 and h4
    </p>
  </body>
</html>
</richcontent>
<node TEXT="https://codepen.io/ibrahimjabbari/pen/ozinB" ID="ID_795924894" CREATED="1491576603890" MODIFIED="1491576603890" LINK="https://codepen.io/ibrahimjabbari/pen/ozinB"/>
</node>
</node>
<node ID="ID_1983603056" CREATED="1491594848022" MODIFIED="1491594851840"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 It could be nice if the html page generate would keep the style of the map
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_100707969" CREATED="1491506376553" MODIFIED="1491561179504"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Maybe add stylesheet support
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_7325135" CREATED="1491506376553" MODIFIED="1491561173698"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Maybe add style as nodes in the map, and these will be added to the html?
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="// s0 Maybe add extra html to add at the beginning or the end of the final file" ID="ID_957613725" CREATED="1491506376553" MODIFIED="1491506376553"/>
<node ID="ID_1009339361" CREATED="1491506376553" MODIFIED="1491561147561"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Take similar fond and style like wikipedia
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="// s0 Add breadcrumb paths in each sections?" ID="ID_1607778743" CREATED="1491506376553" MODIFIED="1491506376553"/>
<node ID="ID_915497362" CREATED="1491506376553" MODIFIED="1491561100711"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 // s0 Try to put the toc in a gray box, it may be easier to read on the eyes.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="// s0 Add the possibility to add a logo to the page near the title." ID="ID_1861049937" CREATED="1491506376553" MODIFIED="1491506376553"/>
<node ID="ID_1175449426" CREATED="1491506376553" MODIFIED="1491561115527"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Change the font for all page, for pre tags and one also for the toc
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="// s0 Add the possibility to add attributes... see what to do with them later" ID="ID_1241283356" CREATED="1491506376553" MODIFIED="1491506376553"/>
<node TEXT="// s0 Add numbered lists" ID="ID_722904050" CREATED="1491506376553" MODIFIED="1491506376553"/>
<node ID="ID_1917086537" CREATED="1491506376553" MODIFIED="1491561125652"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Add conversion to pdf when activating the hotkey to refresh the html
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="// s0 Allow to enter html in the notes and it will become a &lt;pre&gt;..? or it should include the html as it is?" ID="ID_1680005200" CREATED="1491506376553" MODIFIED="1491506376553"/>
<node TEXT="// s0 Document this script in a map also" ID="ID_1218739094" CREATED="1491506376553" MODIFIED="1491506376553"/>
<node TEXT="// s0 Put a EOL before the table of contents (in the html source)" ID="ID_912053029" CREATED="1491506376553" MODIFIED="1491506376553"/>
<node TEXT="s0 Add possibility to insert tables in notes and also by linking to a csv file... simply to add the html that is in the note," ID="ID_401668947" CREATED="1491557292506" MODIFIED="1491557292506"/>
<node ID="ID_441441955" CREATED="1491557292506" MODIFIED="1491561062541"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Insert the paragraphs with format as html so that words in bold would still be bold.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 This should also work for imbricated &lt;ul&gt; and &lt;ol&gt;, try it too" ID="ID_1846204136" CREATED="1491557292513" MODIFIED="1491557292513"/>
<node TEXT="// s0 Check the html source there are &lt;a name... on the same line as &lt;pre&gt; code" ID="ID_1624750441" CREATED="1491741775036" MODIFIED="1491741775036"/>
<node TEXT="s0 Voir pourquoi il y a trop d&apos;espacement apres le toc" ID="ID_1499882774" CREATED="1492164987885" MODIFIED="1492164999910"/>
<node TEXT="s0 Mettre les section dans des div pour mettre des espacement entre les section.... utiliser plus de css... et aussi pour les les sections ne se brise pas... comme pour avoir les separateurs toujours sur la meme page que les titres." ID="ID_1160789203" CREATED="1492165825749" MODIFIED="1492166272634"/>
</node>
<node TEXT="// Notes" FOLDED="true" ID="ID_1552958637" CREATED="1491506376553" MODIFIED="1491506376553">
<node TEXT="// If I have a big paragraph, add an empty node as its parent, or a node with s-1 for example so that I can fold it." FOLDED="true" ID="ID_241885775" CREATED="1491506376555" MODIFIED="1491506376555">
<node TEXT="// s0 Maybe add another way of ignoring the nodes like nodes starting with &lt; and ending with &gt; for example." ID="ID_534007137" CREATED="1491506376555" MODIFIED="1491506376555"/>
</node>
<node TEXT="// I can copy paste the html generated by the html doc script in freeplane to an email and it will keep the links and images from the toc etc... interesting maybe to do complex emails, I could compose emails using maps." ID="ID_1958177442" CREATED="1491506376555" MODIFIED="1491506376555"/>
<node TEXT="It is possible to link any section of the document to any other using the nodeid of a node. It is even possible to press f9 to add nodes and these will be converted to html links." ID="ID_1991018859" CREATED="1491514280876" MODIFIED="1491514380379"/>
<node TEXT="Nodes to link can be created inside paragraph, but i have to edit the html of the paragraph and add the link manually and it is possible to link to another node (section or item) of the current document using the nodeid." ID="ID_626153677" CREATED="1491514930057" MODIFIED="1491514985854"/>
<node TEXT="When I do docs for cases add them like this in fp in the same sub tab line" FOLDED="true" ID="ID_212532605" CREATED="1491570910946" MODIFIED="1491570946248">
<node TEXT="Image 4912.png" ID="ID_689296286" CREATED="1491570932827" MODIFIED="1491570932848">
<hook URI="file:/C:/Screenshots/Image%204912.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="s0 Add a constant to specify if we want to use the memory or a file for" ID="ID_689971079" CREATED="1507715785689" MODIFIED="1507715804811"/>
</node>
<node FOLDED="true" ID="ID_1498185772" CREATED="1507097066835" MODIFIED="1507668010506"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 There's another bug or rather limitation to the script--it fails to convert map with 20,000 or more number of nodes (on a computer with 4GB of ram), when the HTMLwriter that comes with the program does, albeit lacking features found in your otherwise good script. Perhaps it's due to the script compiles everything into butter and uses FileWriter only once at the end.
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_936208985" CREATED="1507097073974" MODIFIED="1507568703866"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Asnwer to Luigi in the forum
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node FOLDED="true" ID="ID_1143598948" CREATED="1507028360774" MODIFIED="1507568700171"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 There is a problem in the notes... indentation is added to simple lines pasted... it keeps the indentation of the html from the note...
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Image 6017.png" ID="ID_1295042077" CREATED="1507028592599" MODIFIED="1507028592626">
<hook URI="file:/C:/Screenshots/Image%206017.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="s0 Make sure that the images follow the indentation, for now it seem no, so image are always on the left even in inside a h1, and if there is text in the image label it appears on the left too... fix this first." ID="ID_1965717035" CREATED="1507026996438" MODIFIED="1507027057275"/>
<node ID="ID_938385662" CREATED="1506930080426" MODIFIED="1507668007413"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Change c.findall() by node.findall() so that I could generate the doc from any branches, but I would need to keep track of the node level manually, this function doesn't work anymore: depth = n.getNodeLevel(false) + 1 // Level 1 is the root node
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Logs" FOLDED="true" ID="ID_945105403" CREATED="1502874364781" MODIFIED="1507028507807">
<node TEXT="s0 Add AMT logs and maybe eventually central and pam logs?" ID="ID_1594451373" CREATED="1502714521215" MODIFIED="1507028507804"/>
</node>
<node TEXT="MAMDoc" FOLDED="true" ID="ID_320449551" CREATED="1502874369049" MODIFIED="1502874373243">
<node ID="ID_398035361" CREATED="1497203378676" MODIFIED="1508779361865"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 1) formulas are kept as formulas and not as values
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_617647002" CREATED="1497203378676" MODIFIED="1497203389330"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 2) no icons transferred, is it possible to change these features?
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="Wf" ID="ID_1361390345" CREATED="1502874373445" MODIFIED="1502874376106"/>
<node TEXT="s0 Put a maximum size for the files that will be included... if they more than that they write in the gray box that they are too big" ID="ID_124847316" CREATED="1497350331207" MODIFIED="1497350332461"/>
<node TEXT="s0 There is too many space after the details for an image... fix that" ID="ID_1640684155" CREATED="1497331646087" MODIFIED="1497331661303"/>
<node TEXT="s0 When adding new lines to a node pressing shift+enter, the new lines are not indented... I should find a way to indent them also." ID="ID_926266110" CREATED="1497262081660" MODIFIED="1502874578247">
<arrowlink SHAPE="CUBIC_CURVE" COLOR="#000000" WIDTH="2" TRANSPARENCY="200" FONT_SIZE="9" FONT_FAMILY="SansSerif" DESTINATION="ID_116559259" STARTINCLINATION="637;0;" ENDINCLINATION="637;0;" STARTARROW="NONE" ENDARROW="DEFAULT"/>
</node>
<node TEXT="s0 Maybe add bread crums in subsections" ID="ID_903096154" CREATED="1497264238427" MODIFIED="1497264254049"/>
<node FOLDED="true" ID="ID_1856277357" CREATED="1497110730335" MODIFIED="1497110752600"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 <a style="text-align: start; font-family: Arial, Helvetica, sans-serif; font-weight: normal; color: rgb(0, 0, 0); letter-spacing: normal; text-transform: none; font-style: normal; text-indent: 0px; word-spacing: 0px; white-space: normal; font-size: 12px" name="ID_905083844"><font size="12px" color="rgb(0, 0, 0)" face="Arial, Helvetica, sans-serif">If a node is a link for example and has a note, the note content will not be inserted and the link will not be displayed... so nothing is shown...</font></a>
    </p>
  </body>
</html>
</richcontent>
<node TEXT="s0 Check if this is the case also with images with notes." ID="ID_705677241" CREATED="1497110753569" MODIFIED="1497110762827"/>
<node TEXT="s0 Fix that." ID="ID_553951442" CREATED="1497110766521" MODIFIED="1497110768867"/>
</node>
<node TEXT="s0 NOTE: For some reason I need to change (cd) into the directory so that the commands work, I cannot just put the full path to the .csv file... try to fix that sometime" ID="ID_393145798" CREATED="1495623802326" MODIFIED="1495623825276" LINK="file:/D:/Work/MindMaps/Cases/ARTE.mm#ID_534433408"/>
<node TEXT="s0 Add the exporting of attributes as html tables with 2 columns" ID="ID_120060087" CREATED="1495091288409" MODIFIED="1495091309275"/>
<node TEXT="s0 Maybe have the gray boxes indended as well?" ID="ID_148067304" CREATED="1497279052797" MODIFIED="1497279062045"/>
<node TEXT="s0 Put the todo elements in the code file..." ID="ID_1138744771" CREATED="1497279062192" MODIFIED="1497279071825"/>
<node TEXT="s0 When there are 2 links one after another they appear too close to each other, maybe add spacing." FOLDED="true" ID="ID_785364774" CREATED="1497428298837" MODIFIED="1497428335804">
<node TEXT="Image 5245.png" ID="ID_1224112368" CREATED="1497428325837" MODIFIED="1497428325856">
<hook URI="file:/C:/Screenshots/Image%205245.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="Code Browser" FOLDED="true" ID="ID_1949937400" CREATED="1491595454015" MODIFIED="1491595457359">
<node TEXT="s0" FOLDED="true" ID="ID_218020315" CREATED="1491595465257" MODIFIED="1491595468801">
<node TEXT="Or use as a browser, for example, it would just import the code file and add the line number as an attribute" ID="ID_553434427" CREATED="1491595458215" MODIFIED="1491595458215"/>
<node TEXT="But it is good to explore the structure of the file side by side with the text editor. And to annotate the code and link it." ID="ID_1214157481" CREATED="1491595458215" MODIFIED="1491595458215"/>
<node TEXT="Maybe add node its after the first import and create a temp code file to work with (side-by-side)..." ID="ID_196724902" CREATED="1491595458219" MODIFIED="1491595458219"/>
<node TEXT="Then once the file will be in &quot;production&quot; the .mm file will become obsolete or i wil need to continue from the temp file..." ID="ID_1568282730" CREATED="1491595458222" MODIFIED="1491595458222"/>
</node>
<node ID="ID_1415714363" CREATED="1491595458224" MODIFIED="1491595479989"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 Add also style to format put color to code...
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1137577555" CREATED="1491595458226" MODIFIED="1491595481876"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 Do also filters for code to show only some parts?
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node ID="ID_809405875" CREATED="1491378170440" MODIFIED="1491382237695"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Try to add the table of content as html in the map? Add links?
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1011430948" CREATED="1491377843459" MODIFIED="1491382205597"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Do a script to parse the exported html to
    </p>
  </body>
</html>
</richcontent>
</node>
<node FOLDED="true" ID="ID_692479604" CREATED="1491379142227" MODIFIED="1491382247036"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 When the map is fully folded, all subnodes will have a + sign to be able to expand them, but the problem is that the document opens all folded.... maybe I should do some preprocessing to unfold all by default?
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_956670161" CREATED="1491379350274" MODIFIED="1491382246106"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Maybe when I distribute the doc I should just unfold everything before
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="s0 I could also generate programs maybe from maps, like I could add files (with link) then the code after would be added to the file. Also folders. Then commands to compile?...." ID="ID_1344887295" CREATED="1491387726304" MODIFIED="1491387785230"/>
<node ID="ID_1008139244" CREATED="1491742057344" MODIFIED="1491742094433"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 Use also templates to read code files like workflows etc (add automatic formats...)
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 Documents to produce" FOLDED="true" ID="ID_374778695" CREATED="1491471635114" MODIFIED="1491471639795">
<node TEXT="s0 Redo my CV using a mind map" ID="ID_357430775" CREATED="1491471640369" MODIFIED="1491471647143"/>
<node TEXT="s0 I can write emails using maps, and then paste the html from chrome to a new email in outlook and it will keep the format. So I could write my emails using it if it is complex email, just to add sub maps in case map folders as emails." ID="ID_628992756" CREATED="1491471647705" MODIFIED="1491471712153"/>
<node ID="ID_1762387980" CREATED="1491471672906" MODIFIED="1497264188386"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Document the script to produce these html document
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="s0 Maybe try to make the bullets with * work also when it is URL (when there is a link in the node)" ID="ID_852361191" CREATED="1493194146760" MODIFIED="1493194171033"/>
<node TEXT="s0 If I put end of lines inside nodes (to create paragraphs, it should become paragraph on the html generated. Removing only p from rawText is causing issues." ID="ID_116559259" CREATED="1494930862357" MODIFIED="1494931078751"/>
<node ID="ID_1610613562" CREATED="1495604622623" MODIFIED="1495604624593"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 Maybe do again the export of the maps to doc (map to html) but using xslt?
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="s0 For some reason the format doesn&apos;t keep. When set directly without the modal (ctrl+backspace)." ID="ID_823086919" CREATED="1498025073503" MODIFIED="1498027970585"/>
<node TEXT="s0 When I set some X nodes to exlude them, then they are still accounted as a level, so for the nodes under they are not for example level 2 if all the nodes before have X so I don&apos;t get the h1 in the list." ID="ID_1546358467" CREATED="1498027974481" MODIFIED="1498028089478"/>
<node TEXT="s0 The script doesn&apos;t take into account the formats that are applied using conditions." FOLDED="true" ID="ID_1763026263" CREATED="1498323244667" MODIFIED="1498323350938">
<node TEXT="s0 Maybe ask the freeplane list about it" ID="ID_1205844362" CREATED="1498323353766" MODIFIED="1498323398469"/>
</node>
<node TEXT="s0 Problem with tag closure" FOLDED="true" ID="ID_64632366" CREATED="1495724178998" MODIFIED="1495724184475">
<node TEXT="Image 5120.png" ID="ID_768831087" CREATED="1495724188879" MODIFIED="1495724188902">
<hook URI="file:/C:/Screenshots/Image%205120.png" SIZE="0.97402596" NAME="ExternalObject"/>
</node>
</node>
<node ID="ID_1050245803" CREATED="1536076104728" MODIFIED="1536078005498">
<icon BUILTIN="full-1"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 Allow notes to be added to images (like text from error messages to error screenshots).
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_1546250574" CREATED="1536077986194" MODIFIED="1536078005495">
<icon BUILTIN="full-1"/>
<richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 The details in the images dosen't work... make them work
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node FOLDED="true" ID="ID_332879538" CREATED="1497271691174" MODIFIED="1497272104400"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <b>MapToHtmlDoc share/update</b>&#160;(forum/google drive)
    </p>
  </body>
</html>
</richcontent>
<cloud COLOR="#ccffcc" SHAPE="ARC"/>
<node ID="ID_479012435" CREATED="1497272139986" MODIFIED="1507568669594"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s2 Put the script on github&#160;with the other scripts
    </p>
  </body>
</html>
</richcontent>
<font SIZE="24"/>
</node>
<node ID="ID_1733942929" CREATED="1497271987567" MODIFIED="1497271996024" LINK="https://sourceforge.net/p/freeplane/discussion/758437/thread/67f8576c/"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://sourceforge.net/p/freeplane/<b><font color="#ff0000">discussion</font></b>/758437/thread/67f8576c/
    </p>
  </body>
</html>
</richcontent>
</node>
<node ID="ID_364500115" CREATED="1497271707580" MODIFIED="1497272003293" LINK="https://drive.google.com/drive/u/0/folders/0B24DT3jNO8emUFBvV0k3LWhqZVk"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      https://<b><font color="#ff0000">drive</font></b>.google.com/drive/u/0/folders/0B24DT3jNO8emUFBvV0k3LWhqZVk
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="D:\Work\MindMaps\Doc" FOLDED="true" ID="ID_1313777456" CREATED="1497271772588" MODIFIED="1497271775049" LINK="file:/D:/Work/MindMaps/Doc">
<node ID="ID_1610581873" CREATED="1497271779011" MODIFIED="1497272011316" LINK="file:/D:/Work/MindMaps/Doc/MapToHtmlDocDemoMap.mm"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      MapToHtmlDoc<b><font color="#ff0000">DemoMap</font></b>.mm
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Screenshot.png" ID="ID_671664696" CREATED="1497271781743" MODIFIED="1497271781743" LINK="file:/D:/Work/MindMaps/Doc/Screenshot.png"/>
</node>
<node TEXT="scripts" FOLDED="true" ID="ID_590046166" CREATED="1497271798618" MODIFIED="1497271798620" LINK="file:/C:/Users/alexandre.viau/AppData/Roaming/Freeplane/1.5.x/scripts/">
<node ID="ID_1940712545" CREATED="1497271817475" MODIFIED="1497272016441" LINK="file:/C:/Users/alexandre.viau/AppData/Roaming/Freeplane/1.5.x/scripts/MapToHtmlDoc.groovy"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      MapToHtmlDoc<b><font color="#ff0000">.groovy</font></b>
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node TEXT="NOTES" FOLDED="true" ID="ID_1962099516" CREATED="1491378101457" MODIFIED="1491379281290">
<cloud COLOR="#ffffcc" SHAPE="ARC"/>
<node TEXT="Use this export format" FOLDED="true" ID="ID_663919899" CREATED="1491380045067" MODIFIED="1491380049449">
<node TEXT="Export to HTML (.html)" ID="ID_1991758760" CREATED="1491380040094" MODIFIED="1491380041496"/>
</node>
<node TEXT="In the documents, use the automatic format so I get title size and colors, and put empty subtitle 1 and subtitle 2 if there are none, so the paragraphs have the same fonts and colors." ID="ID_1256301890" CREATED="1491380112674" MODIFIED="1491380162156"/>
<node TEXT="Use the html snippets to add html code in the notes, like tables for example" FOLDED="true" ID="ID_1036740319" CREATED="1491378111609" MODIFIED="1491378112699">
<node TEXT="Html" ID="ID_1256676068" CREATED="1491378033956" MODIFIED="1491378033960" LINK="file:/D:/Work/MindMaps/Snippets.mm#ID_967614626"/>
</node>
<node TEXT="Show the notes panel at the bottom" ID="ID_1590612009" CREATED="1491378119695" MODIFIED="1491378128833"/>
<node TEXT="When the map is fully folded, all subnodes will have a + sign to be able to expand them" ID="ID_260595462" CREATED="1491379142227" MODIFIED="1491379168980"/>
<node TEXT="There are 2 ways to compose html documents now, with the MapToHtmlDoc file using the automatic formatting, and the MapToHtmlDoc.groovy script to create structures and links etc automatically, this is the quickest way but less flexible, and the freeplane html template (i created) that use map conditional formatting." ID="ID_70981266" CREATED="1491741872190" MODIFIED="1491742012875"/>
<node TEXT="Use also templates to read code files like workflows etc (add automatic formats...)" ID="ID_788498621" CREATED="1491742057344" MODIFIED="1491742082450"/>
</node>
</node>
<node TEXT="Confluence Test" ID="ID_449345251" CREATED="1535758914446" MODIFIED="1535758914450" LINK="file:/D:/probook_d/Work/MindMaps/Doc/ConfluenceTest.mm#ID_1283391272"/>
</node>
</node>
</map>
