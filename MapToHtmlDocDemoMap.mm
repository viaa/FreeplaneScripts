<map version="freeplane 1.5.9">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="MapToHtmlDoc - Demo Map" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1497267360659"><hook NAME="MapStyle" background="#ffffff" zoom="0.752">
    <conditional_styles>
        <conditional_style ACTIVE="true" STYLE_REF="s-1: Abandonned" LAST="false">
            <node_contains_condition VALUE="s-1" ITEM="filter_node" MATCH_APPROXIMATELY="false"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="s0: Todo" LAST="false">
            <node_contains_condition VALUE="s0 " ITEM="filter_node" MATCH_APPROXIMATELY="false"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="s1: Doing" LAST="false">
            <node_contains_condition VALUE="s1 " ITEM="filter_node" MATCH_APPROXIMATELY="false"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="s2: Done" LAST="false">
            <node_contains_condition VALUE="s2 " ITEM="filter_node" MATCH_APPROXIMATELY="false"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="s3: Important" LAST="false">
            <node_contains_condition VALUE="s3 " ITEM="filter_node" MATCH_APPROXIMATELY="false"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="IGNORE" LAST="false">
            <node_compare_condition user_name="IGNORE (IGNORE)" VALUE="IGNORE" MATCH_CASE="true" MATCH_APPROXIMATELY="false" COMPARATION_RESULT="0" SUCCEED="true" ITEM="filter_node"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="OLD" LAST="false">
            <node_compare_condition user_name="IGNORE (OLD)" VALUE="OLD" MATCH_CASE="true" MATCH_APPROXIMATELY="false" COMPARATION_RESULT="0" SUCCEED="true" ITEM="filter_node"/>
        </conditional_style>
        <conditional_style ACTIVE="true" STYLE_REF="BAK" LAST="false">
            <node_compare_condition user_name="IGNORE (BAK)" VALUE="BAK" MATCH_CASE="true" MATCH_APPROXIMATELY="false" COMPARATION_RESULT="0" SUCCEED="true" ITEM="filter_node"/>
        </conditional_style>
    </conditional_styles>
    <properties fit_to_viewport="false;" show_icon_for_attributes="true" show_note_icons="true"/>

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
<hook NAME="AutomaticEdgeColor" COUNTER="169" RULE="ON_BRANCH_CREATION"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Version: 2017-06-12_14.35.57
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Introduction" POSITION="right" ID="ID_566377176" CREATED="1497111225374" MODIFIED="1497111231785">
<edge COLOR="#808080"/>
<node TEXT="What is it?" ID="ID_1808926678" CREATED="1497111702297" MODIFIED="1497111706820">
<node TEXT="" ID="ID_1488609538" CREATED="1497111708022" MODIFIED="1497111708022">
<node ID="ID_1464493212" CREATED="1497111709652" MODIFIED="1497111740978"><richcontent TYPE="NODE">

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
</node>
<node TEXT="The script will take a map with a struture like this one and convert it automatically to a basic although very usable html document that can later be converted to pdf." ID="ID_149309362" CREATED="1497111747393" MODIFIED="1497112533476">
<node TEXT="PDF Creation" ID="ID_1458681393" CREATED="1497111796247" MODIFIED="1497111796251" LINK="file:/D:/Work/MindMaps/Doc/MapToHtmlDocDemoMap.mm#ID_324386908"/>
</node>
<node TEXT="Once you copied the script to your Freeplane scripts folder and restarted Freeplane, just run the script while this map is in focus in freeplane, then a file called c:\temp\out.html will be created that will be the html version of this map, or any other map that you created and run the script on. It works on any map, but it is better if you keep the structure similar to this one. See the Sections and Structure section below." ID="ID_288990436" CREATED="1497111802087" MODIFIED="1497111917396"/>
</node>
</node>
<node TEXT="Quick and easy basic documentation" ID="ID_411145636" CREATED="1497111244683" MODIFIED="1497112663490">
<node TEXT="" ID="ID_603809610" CREATED="1497111289402" MODIFIED="1497111289402">
<node TEXT="One problem with creating documents with Word is that it is not very easy as in Freeplane to shuffle sections around and restructure the documents. This is actually the main reason I use Freeplane, because it is easy to restructure things, but there are also many other reasons like searching and linking." ID="ID_570876380" CREATED="1497111489479" MODIFIED="1497111581849">
<node TEXT="Sections and structure" ID="ID_1939097856" CREATED="1497111921920" MODIFIED="1497111921921" LINK="file:/D:/Work/MindMaps/Doc/MapToHtmlDocDemoMap.mm#ID_832412206"/>
</node>
<node TEXT="I wanted to be able to create documents using Freeplane and just moves blocs of nodes arount to restructure my documents easily." ID="ID_995873642" CREATED="1497111289766" MODIFIED="1497111371358"/>
</node>
</node>
<node TEXT="Compose documents from existing nodes" ID="ID_601793243" CREATED="1497111464701" MODIFIED="1497111968976">
<node TEXT="" ID="ID_1148351141" CREATED="1497111611331" MODIFIED="1497111611331">
<node TEXT="It is easy to compose a document using text and images and links that are stored in other maps, just by copying them into the document map." ID="ID_65028233" CREATED="1497111612365" MODIFIED="1497111651900"/>
<node TEXT="Also someone may want to keep the structure of maps like this map for example so that it can be converted to html later if needed." ID="ID_950856550" CREATED="1497111652250" MODIFIED="1497111699946"/>
</node>
</node>
<node TEXT="Other usages" ID="ID_1066963525" CREATED="1497119788023" MODIFIED="1497119796600">
<node TEXT="Outlook Emails" ID="ID_805180690" CREATED="1497119797548" MODIFIED="1497119874657">
<node TEXT="The html created can also for example copy pasted from Chrome (for example) into an outlook email, and the links and images will be preserved. So it allows to compose complex emails in Freeplane with a lot of hyperlinking, sections and content." ID="ID_446817172" CREATED="1497119609464" MODIFIED="1497119680548"/>
</node>
<node TEXT="Blogs" ID="ID_1475990785" CREATED="1497119803490" MODIFIED="1497119805800">
<node TEXT="The source html created could probably be copy pasted into blogs, although I haven&apos;t tried that. It might work with Blogger or Wordpress." ID="ID_477508955" CREATED="1497119680777" MODIFIED="1497119755648"/>
</node>
<node TEXT="External edition" ID="ID_1015240581" CREATED="1497198817966" MODIFIED="1497198892570">
<node TEXT="It is possible to open the html document generated with OpenOffice Writer or Word to edit it if it needs further editing." ID="ID_741986714" CREATED="1497198833440" MODIFIED="1497198866062"/>
</node>
</node>
</node>
<node TEXT="Features" POSITION="right" ID="ID_998844426" CREATED="1497029381635" MODIFIED="1497107838979">
<edge COLOR="#808080"/>
<node TEXT="Sections and structure" ID="ID_832412206" CREATED="1497109568309" MODIFIED="1497110394449">
<node TEXT="Auto creation of sections" ID="ID_1270706494" CREATED="1497110129463" MODIFIED="1497110146034">
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
<node TEXT="Auto creation of table of contents" ID="ID_1502529847" CREATED="1497110146703" MODIFIED="1497110381697">
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
<node TEXT="You can also use the back button of the browser to go back after clicking a link in the table of content. It allows to quickly jump to sections and back to the top." ID="ID_1608736676" CREATED="1497111148499" MODIFIED="1497111194106"/>
</node>
<node TEXT="" ID="ID_528095958" CREATED="1497112384773" MODIFIED="1497112452667">
<node TEXT="Try moving sections around, to one branch then to another, running the script and refreshing the html page, and see the html structure follow the changes." ID="ID_215647132" CREATED="1497112386037" MODIFIED="1497112452665"/>
</node>
</node>
<node TEXT="Node properties" ID="ID_224771795" CREATED="1497029381635" MODIFIED="1497108137666">
<node TEXT="Links" ID="ID_1056115359" CREATED="1497029381635" MODIFIED="1497106628408">
<node ID="ID_325032601" CREATED="1497029600618" MODIFIED="1497108881265"><richcontent TYPE="NODE">

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
<node TEXT="The script will use the nodes IDs to create the links in the document." ID="ID_243315452" CREATED="1497112873192" MODIFIED="1497112908538">
<node TEXT="More features" ID="ID_1454150633" CREATED="1497029597975" MODIFIED="1497108686577" LINK="freeplane:/%20/D:/Work/MindMaps/Doc/MapToHtmlDocTest.mm#ID_106028219"/>
</node>
</node>
<node ID="ID_1803004181" CREATED="1497106472016" MODIFIED="1497108885839"><richcontent TYPE="NODE">

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
<node TEXT="If the file matches certain patterns (txt|log|sh|groovy|vim|ini), it is automatically inserted in a gray box. If you want to have more file formats you will need to edit it in the script:" ID="ID_1481860156" CREATED="1497108725811" MODIFIED="1497112632604">
<node TEXT="system.ini" ID="ID_1760686471" CREATED="1497106529589" MODIFIED="1497106529589" LINK="file:/C:/Windows/system.ini"/>
</node>
<node TEXT="If it doesn&apos;t match the pattern above, a link to the file is created:" ID="ID_65756803" CREATED="1497108744943" MODIFIED="1497112599709">
<node TEXT="hosts file" ID="ID_263958491" CREATED="1497108814485" MODIFIED="1497108833842" LINK="file:/C:/Windows/System32/drivers/etc/hosts"/>
</node>
</node>
<node ID="ID_1964841208" CREATED="1497029651216" MODIFIED="1497108883923"><richcontent TYPE="NODE">

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
<node ID="ID_996029056" CREATED="1497106573920" MODIFIED="1497108853970"><richcontent TYPE="NODE">

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
</node>
<node TEXT="Node details" ID="ID_233445031" CREATED="1497107024512" MODIFIED="1497107029316">
<node TEXT="This node has details" ID="ID_382894597" CREATED="1497107030112" MODIFIED="1497107043134"><richcontent TYPE="DETAILS">

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
<node TEXT="Node notes" ID="ID_1049692305" CREATED="1497109628062" MODIFIED="1497109631647">
<node TEXT="If a node as (only) a note, the node will appear in a gray box." ID="ID_231008527" CREATED="1497109913812" MODIFIED="1497109938808"/>
<node TEXT="If a map as a note, the node will be displayed in a gray box." ID="ID_1406551923" CREATED="1497109632894" MODIFIED="1497109891113"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      This is the node. It should appear in a gray box.
    </p>
    <p>
      <b><font size="3" color="#3333ff" face="Nyala">Also with</font></b><font size="3" color="#3333ff" face="Nyala">&#160;</font><font size="6" color="#ff00cc" face="Palatino Linotype">color</font>&#160;and <font size="6" color="#ffcc00" face="Rage Italic">size</font>&#160;and <font size="6" color="#cccc00" face="Aharoni">font</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="If a node is a link for example and has a note, the note content will not be inserted." ID="ID_905083844" CREATED="1497110582938" MODIFIED="1497110614524">
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
</node>
</node>
<node TEXT="Node levels" ID="ID_468582310" CREATED="1497029381635" MODIFIED="1497107945807">
<node TEXT="Auto-indentation of child nodes" ID="ID_80948979" CREATED="1497029381635" MODIFIED="1497108103892">
<node TEXT="Library" ID="ID_555585377" CREATED="1497106856140" MODIFIED="1497106858654">
<node TEXT="Catalogs" ID="ID_963219391" CREATED="1497106859442" MODIFIED="1497106862470">
<node ID="ID_1851779685" CREATED="1497107326752" MODIFIED="1497107337745"><richcontent TYPE="NODE">

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
<node ID="ID_1021036871" CREATED="1497106865494" MODIFIED="1497107353057"><richcontent TYPE="NODE">

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
<node TEXT="Bullet list" ID="ID_962226392" CREATED="1497029381635" MODIFIED="1497108051068">
<node TEXT="* An asterix as the first char will be converted to a bullet" ID="ID_1641369483" CREATED="1497029516449" MODIFIED="1497108075829"/>
<node TEXT="* List item 2" ID="ID_1183886613" CREATED="1497029521529" MODIFIED="1497029525675"/>
<node TEXT="* List item 3" ID="ID_386527639" CREATED="1497029526169" MODIFIED="1497029530909"/>
</node>
</node>
<node TEXT="Formating" ID="ID_1559534251" CREATED="1497108253313" MODIFIED="1497108385684">
<node TEXT="Color and size" ID="ID_1929185392" CREATED="1497108255963" MODIFIED="1497108260420">
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
</node>
</node>
</node>
<node TEXT="More features" POSITION="right" ID="ID_106028219" CREATED="1497029381635" MODIFIED="1497108395427">
<edge COLOR="#808080"/>
<node TEXT="Images" ID="ID_34785326" CREATED="1497029381635" MODIFIED="1497108400598">
<node TEXT="2 types of image insertion" ID="ID_336707127" CREATED="1497029381635" MODIFIED="1497108411475">
<node ID="ID_1071338087" CREATED="1497029825254" MODIFIED="1497108576998"><richcontent TYPE="NODE">

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
<node TEXT="" ID="ID_1574202634" CREATED="1497029835904" MODIFIED="1497108627458">
<hook URI="file:/C:/Users/Public/Pictures/Sample%20Pictures/Koala.jpg" SIZE="0.5859375" NAME="ExternalObject"/>
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
</node>
</node>
<node ID="ID_192512495" CREATED="1497029805881" MODIFIED="1497108611278"><richcontent TYPE="NODE">

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
<node TEXT="Tulips.jpg" ID="ID_1679868938" CREATED="1497029819979" MODIFIED="1497108561935" LINK="file:/C:/Users/Public/Pictures/Sample%20Pictures/Tulips.jpg"><richcontent TYPE="DETAILS">

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
</node>
</node>
<node TEXT="Attributes" ID="ID_1127853689" CREATED="1497197384853" MODIFIED="1497197388298">
<node TEXT="Attributes are rendered as html tables" ID="ID_1163312747" CREATED="1497197389392" MODIFIED="1497197409246">
<node TEXT="This is a table with attributes" ID="ID_19088320" CREATED="1497197412404" MODIFIED="1497197570392">
<attribute_layout NAME_WIDTH="81.74999756366022 pt" VALUE_WIDTH="146.2499956414105 pt"/>
<attribute NAME="Name" VALUE="Kiki"/>
<attribute NAME="Country" VALUE="Australia"/>
<attribute NAME="Food" VALUE="Eucalyptus leaves"/>
<attribute NAME="Activity" VALUE="Tree climbing"/>
<attribute NAME="Friends" VALUE="Kangaroos"/>
</node>
<node TEXT="This is a table with attributes" ID="ID_861412913" CREATED="1497197412404" MODIFIED="1497197570392">
<attribute_layout NAME_WIDTH="81.74999756366022 pt" VALUE_WIDTH="146.2499956414105 pt"/>
<attribute NAME="Name" VALUE="Kiki"/>
<attribute NAME="Country" VALUE="Australia"/>
<attribute NAME="Food" VALUE="Eucalyptus leaves"/>
<attribute NAME="Activity" VALUE="Tree climbing"/>
<attribute NAME="Friends" VALUE="Kangaroos"/>
</node>
</node>
</node>
</node>
<node TEXT="Extra features" POSITION="right" ID="ID_797831984" CREATED="1497108979742" MODIFIED="1497108982493">
<edge COLOR="#808080"/>
<node TEXT="Ignored sections" ID="ID_1455741693" CREATED="1497109000350" MODIFIED="1497109020774">
<node TEXT="Why this feature was added?" ID="ID_1664469574" CREATED="1497109125121" MODIFIED="1497112345518">
<node TEXT="If a node is called IGNORE, BAK or OLD, or contains specific icons, the nodes that are put inside them will be ignored. This is useful to put temporary things or todo items, or things not needed anymore but that we want to keep stored in the map.&#xa;As many of these sections as needed can be created at any level in the map." ID="ID_1510170325" CREATED="1497109041343" MODIFIED="1497339704538"/>
<node TEXT="The ignored sections will not be visilble in the html file." ID="ID_902861845" CREATED="1497109380758" MODIFIED="1497109395348"/>
</node>
<node TEXT="Ignored sections using icons" ID="ID_911605202" CREATED="1497339536808" MODIFIED="1497339919828">
<node TEXT="This section should be empty." ID="ID_730029603" CREATED="1497339903384" MODIFIED="1497339915730"/>
<node TEXT="This node and it&apos;s child not will be excluded if the node has this icon" ID="ID_569158912" CREATED="1497336558491" MODIFIED="1497339627247">
<icon BUILTIN="button_cancel"/>
<node TEXT="This text should not appear in the output." ID="ID_113474311" CREATED="1497339599462" MODIFIED="1497339612457"/>
</node>
<node TEXT="This node and it&apos;s child not will be excluded if the node has this icon" ID="ID_1970782863" CREATED="1497337819276" MODIFIED="1497339620776">
<icon BUILTIN="closed"/>
<node TEXT="This text should not appear in the output." ID="ID_270111790" CREATED="1497339599462" MODIFIED="1497339612457"/>
</node>
</node>
<node TEXT="Ignored sections using nodes with specific core text" ID="ID_767063111" CREATED="1497339652384" MODIFIED="1497339842437">
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
<node TEXT="IGNORE" ID="ID_951450337" CREATED="1497107450494" MODIFIED="1497107452125">
<node TEXT="Text I don&apos;t want to appear in the html file." ID="ID_409125203" CREATED="1497029381635" MODIFIED="1497109243321"/>
<node TEXT="Things to do later:" ID="ID_166954663" CREATED="1497109248277" MODIFIED="1497109269056">
<node TEXT="Add more features." ID="ID_1245604558" CREATED="1497109270148" MODIFIED="1497109298440"/>
<node TEXT="Send to the forum." ID="ID_577026769" CREATED="1497109282793" MODIFIED="1497109290834"/>
<node TEXT="Maybe add templates instead of hardcoded html/css?" ID="ID_1185938673" CREATED="1497109299207" MODIFIED="1497109315603"/>
<node TEXT="Add youtube videos?" ID="ID_204069836" CREATED="1497109966895" MODIFIED="1497109989261"/>
</node>
</node>
<node TEXT="BAK" ID="ID_1143676697" CREATED="1497029981041" MODIFIED="1497029983570">
<node TEXT="Text that will be ignored but can serve as a backup section" ID="ID_1776752341" CREATED="1497029984234" MODIFIED="1497030002729"/>
<node TEXT="I will keep a copy of this" ID="ID_1264229872" CREATED="1497109355399" MODIFIED="1497109360656">
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
<node TEXT="OLD" ID="ID_359837504" CREATED="1497030003778" MODIFIED="1497030006043">
<node TEXT="Old stuff to delete. Like a recycle bin. Will be ignored also." ID="ID_1925026007" CREATED="1497030006665" MODIFIED="1497030024707">
<node TEXT="The pinguins image will not appear in the html file." ID="ID_476767547" CREATED="1497109194311" MODIFIED="1497109222790">
<hook URI="file:/C:/Users/Public/Pictures/Sample%20Pictures/Penguins.jpg" SIZE="0.5859375" NAME="ExternalObject"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="PDF Creation" ID="ID_324386908" CREATED="1497110483274" MODIFIED="1497110488425">
<node TEXT="PrinceXML" ID="ID_1149512415" CREATED="1497110489220" MODIFIED="1497110491424">
<node TEXT="You can use PrinceXML to convert your html to pdf once it is generated so you get a portable document with images included." ID="ID_295185508" CREATED="1497110492087" MODIFIED="1497110542350"/>
</node>
<node TEXT="Office Suites" ID="ID_1063291896" CREATED="1497267293243" MODIFIED="1497267325144">
<node TEXT="You can use also OpenOffice Writer or Microsoft Word to open the html file generated and save it as PDF or other formats as you need." ID="ID_1059487994" CREATED="1497267310033" MODIFIED="1497267348362"/>
</node>
</node>
</node>
<node TEXT="I hope you&apos;ll find it useful too" POSITION="right" ID="ID_495374163" CREATED="1497112090702" MODIFIED="1497112363928">
<edge COLOR="#808080"/>
<node TEXT="" ID="ID_716371057" CREATED="1497112137307" MODIFIED="1497112137307">
<node TEXT="" ID="ID_519608694" CREATED="1497112136062" MODIFIED="1497112136062">
<node TEXT="Alexandre" ID="ID_1478027423" CREATED="1497112114098" MODIFIED="1497112115945"/>
</node>
</node>
</node>
</node>
</map>
