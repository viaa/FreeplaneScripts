<map version="freeplane 1.6.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="MapToHtmlDoc - Demo Map" FOLDED="false" ID="ID_1723255651" CREATED="1283093380553" MODIFIED="1508074252620"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Version: 2017-10-15_16.30.52
    </p>
  </body>
</html>

</richcontent>
<hook NAME="MapStyle" background="#ffffff" zoom="0.674">
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
<hook NAME="AutomaticEdgeColor" COUNTER="162" RULE="ON_BRANCH_CREATION"/>
<hook NAME="accessories/plugins/AutomaticLayout.properties" VALUE="ALL"/>
<node TEXT="Introduction" POSITION="right" ID="ID_566377176" CREATED="1497111225374" MODIFIED="1499439933595">
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
<node TEXT="The script will take a map with a structure like this map and convert it automatically to a basic although very usable html document that can later be converted to pdf." ID="ID_149309362" CREATED="1497111747393" MODIFIED="1507189009282">
<node TEXT="PDF Creation" ID="ID_1458681393" CREATED="1497111796247" MODIFIED="1497111796251" LINK="file:/D:/Work/MindMaps/Doc/MapToHtmlDocDemoMap.mm#ID_324386908"/>
</node>
<node TEXT="It is possible to convert only a part of a map. If you want to whole map to be converted to html, you have to select the root node before to run the script, otherwise only the branch of the currently selected node will be converted." ID="ID_799281830" CREATED="1507189016871" MODIFIED="1507189108064"/>
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
<node TEXT="If you want to copy-paste the html to Outlook, you can use Internet Explorer to view the html and copy the output from there, once pasted the line spacing is better. But with Chrome the links from one node to another are kept and they worked from the Outlook Email so better to use Chrome." ID="ID_317163407" CREATED="1498550963252" MODIFIED="1498558614954"/>
</node>
<node TEXT="Blogs" ID="ID_1475990785" CREATED="1497119803490" MODIFIED="1497119805800">
<node TEXT="The source html created could probably be copy pasted into blogs, although I haven&apos;t tried that. It might work with Blogger or Wordpress." ID="ID_477508955" CREATED="1497119680777" MODIFIED="1497119755648"/>
</node>
<node TEXT="External edition" ID="ID_1015240581" CREATED="1497198817966" MODIFIED="1497198892570">
<node TEXT="It is possible to open the html document generated with OpenOffice Writer or Word to edit it if it needs further editing." ID="ID_741986714" CREATED="1497198833440" MODIFIED="1497198866062"/>
</node>
</node>
</node>
<node TEXT="Features" POSITION="right" ID="ID_998844426" CREATED="1497029381635" MODIFIED="1508071999447">
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
<node TEXT="Auto creation of table of contents" ID="ID_1502529847" CREATED="1497110146703" MODIFIED="1508073899674">
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
<node TEXT="Auto-indentation of child nodes" ID="ID_80948979" CREATED="1497029381635" MODIFIED="1508073892371">
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
<node TEXT="Change node levels" ID="ID_1566502814" CREATED="1508073908810" MODIFIED="1508073912212">
<node TEXT="Node level can be enforced by the user by setting specific icons on them. By default these icons will change the level of a node to level 2, 3 and 4 (level 1 is the root node and cannot be set):" ID="ID_1375312217" CREATED="1508073922046" MODIFIED="1508074136139">
<node TEXT="* Dark-2" ID="ID_1998908557" CREATED="1508074007242" MODIFIED="1508074109342"/>
<node TEXT="* Dark-3" ID="ID_1188948088" CREATED="1508074008231" MODIFIED="1508074114434"/>
<node TEXT="* Dark-4" ID="ID_673194661" CREATED="1508074008971" MODIFIED="1508074118008"/>
</node>
</node>
</node>
<node TEXT="Formating" ID="ID_1559534251" CREATED="1497108253313" MODIFIED="1508073166077">
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
<node TEXT="More features" POSITION="right" ID="ID_106028219" CREATED="1497029381635" MODIFIED="1507668047701">
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
<node TEXT="" ID="ID_1574202634" CREATED="1497029835904" MODIFIED="1497108627458"><richcontent TYPE="DETAILS">

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
<hook URI="file:/C:/Users/Public/Pictures/Sample%20Pictures/Koala.jpg" SIZE="0.5859375" NAME="ExternalObject"/>
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
<node TEXT="Bullet lists" ID="ID_962226392" CREATED="1497029381635" MODIFIED="1508074246215">
<node TEXT="" ID="ID_691129849" CREATED="1508074192151" MODIFIED="1508074192151">
<node TEXT="An asterix as the first char will be converted to a bullet." ID="ID_1641369483" CREATED="1497029516449" MODIFIED="1508074235341"/>
<node TEXT="* List item 1" ID="ID_1720286881" CREATED="1508074215728" MODIFIED="1508074219258"/>
<node TEXT="* List item 2" ID="ID_1183886613" CREATED="1497029521529" MODIFIED="1497029525675"/>
<node TEXT="* List item 3" ID="ID_386527639" CREATED="1497029526169" MODIFIED="1497029530909"/>
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
<node TEXT="Ignored sections with attributes" ID="ID_1594407392" CREATED="1497543987993" MODIFIED="1497543996217">
<node TEXT="This section should be empty." ID="ID_272395147" CREATED="1497339903384" MODIFIED="1497339915730"/>
<node TEXT="At Quinbus&apos; request" ID="ID_1512728740" CREATED="1497543998744" MODIFIED="1497544049369">
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
<node TEXT="PDF creation" ID="ID_324386908" CREATED="1497110483274" MODIFIED="1507040868533">
<node TEXT="PrinceXML" ID="ID_1149512415" CREATED="1497110489220" MODIFIED="1497110491424">
<node TEXT="You can use PrinceXML to convert your html to pdf once it is generated so you get a portable document with images included." ID="ID_295185508" CREATED="1497110492087" MODIFIED="1497110542350"/>
</node>
<node TEXT="Office Suites" ID="ID_1063291896" CREATED="1497267293243" MODIFIED="1497267325144">
<node TEXT="You can use also OpenOffice Writer or Microsoft Word to open the html file generated and save it as PDF or other formats as you need." ID="ID_1059487994" CREATED="1497267310033" MODIFIED="1497267348362"/>
</node>
</node>
<node TEXT="Image minimize" ID="ID_1766577308" CREATED="1507030156891" MODIFIED="1507030169883">
<node TEXT="ImageEmbedLinkSwitcher.groovy" ID="ID_1765991671" CREATED="1507030171387" MODIFIED="1507030495278">
<node TEXT="This script is useful if you want to get the images out of the screen, to minimize them. Then embedded images will appear as links." ID="ID_782805686" CREATED="1507030243138" MODIFIED="1507030495278"/>
<node TEXT="Code" ID="ID_560719244" CREATED="1507030288244" MODIFIED="1507030318046"><richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      // This script simply do a switch between an image that is embedded and a image as a link.
    </p>
    <p>
      // If the image is a link, it will become an image embedded in the map with no link.
    </p>
    <p>
      // If the image is embedded, it will become a link to an image.
    </p>
    <p>
      
    </p>
    <p>
      if (link.text == null &amp;&amp; externalObject.uri != null) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;link.text = externalObject.uri
    </p>
    <p>
      &#160;&#160;&#160;&#160;externalObject.uri = null
    </p>
    <p>
      }
    </p>
    <p>
      else if (externalObject.uri == null &amp;&amp; link != null) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;externalObject.uri = link.text
    </p>
    <p>
      &#160;&#160;&#160;&#160;link.text = null
    </p>
    <p>
      }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node TEXT="Configuration" POSITION="right" ID="ID_662083576" CREATED="1507667102285" MODIFIED="1507716387932">
<edge COLOR="#808080"/>
<node TEXT="Freeplane preferences" ID="ID_1037169726" CREATED="1507667110409" MODIFIED="1507716393207">
<node TEXT="Allow script execution" ID="ID_1600618141" CREATED="1507667121107" MODIFIED="1507667203462">
<node TEXT="As for all Freeplane scripts, we need to make sure that Freeplane is allowed to run scripts." ID="ID_868479381" CREATED="1507667161134" MODIFIED="1507667230402"/>
<node TEXT="Go to Tools menu &gt; Preferences &gt; Plugin tab &gt; Scripting section, then where it is written &quot;Script execution enabled&quot;, select &apos;Yes&apos;." ID="ID_1596728053" CREATED="1507667231062" MODIFIED="1507667349986"/>
</node>
<node TEXT="Allow file read/write" ID="ID_757334109" CREATED="1507667203852" MODIFIED="1507667221334">
<node TEXT="Go to Tools menu &gt; Preferences &gt; Plugin tab &gt; Scripting section, then where it is written &apos;Permit file/read (or write) operations (NOT recommended)&apos;, check the box. The scripts both reads from a temp file and writes to the destination html file so both check boxes need to be checked." ID="ID_830035439" CREATED="1507667231062" MODIFIED="1507667455254"/>
</node>
</node>
<node TEXT="MapToHtmlDoc.groovy" ID="ID_379127410" CREATED="1507716393681" MODIFIED="1507716750300">
<node TEXT="Support for large maps (LARGE_MAP_USE_FILE)" ID="ID_1074648696" CREATED="1507716397573" MODIFIED="1507716675674">
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
<node TEXT="HTML document path" ID="ID_1912240626" CREATED="1507752292472" MODIFIED="1507752476854">
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
<node TEXT="By default they are set like this:" ID="ID_72123664" CREATED="1507752454952" MODIFIED="1507752454952">
<node TEXT="OUT_DIR = &apos;c:/temp/&apos;" ID="ID_742111355" CREATED="1507752454952" MODIFIED="1507752454952"/>
<node TEXT="OUT_FILENAME = &apos;out.html&apos;" ID="ID_1116861881" CREATED="1507752454952" MODIFIED="1507752454952"/>
</node>
</node>
</node>
</node>
<node TEXT="History" POSITION="right" ID="ID_1784484328" CREATED="1507667504082" MODIFIED="1507667565777">
<edge COLOR="#808080"/>
<node TEXT="Documentation" ID="ID_273653473" CREATED="1507667511885" MODIFIED="1507667570837">
<node TEXT="Version: 2017-10-10_23.31.35" ID="ID_725781849" CREATED="1507667517993" MODIFIED="1507667543085">
<node TEXT="Added the &apos;Freeplane Configuration&apos; section." ID="ID_1275234350" CREATED="1507667554585" MODIFIED="1507667585045"/>
</node>
<node ID="ID_329209147" CREATED="1507716915674" MODIFIED="1507716915674"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Version: 2017-10-11_13.15.02
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Modified the configuration section, added info about large map support." ID="ID_834344458" CREATED="1507716917201" MODIFIED="1507716943475"/>
</node>
<node TEXT="Version: 2017-10-11_23.08.07" ID="ID_377706493" CREATED="1507752484955" MODIFIED="1507752489792">
<node TEXT="Added HTML document path section to the configuration section." ID="ID_666494889" CREATED="1507752491057" MODIFIED="1507752507777"/>
</node>
<node ID="ID_1182643409" CREATED="1508074260652" MODIFIED="1508074260652"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Version: 2017-10-15_16.30.52
    </p>
  </body>
</html>

</richcontent>
<node TEXT="Added the possibility of changing node levels by adding a specific icon with a number to the node." ID="ID_616869992" CREATED="1508074279089" MODIFIED="1508074325409"/>
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
<node TEXT="IGNORE" POSITION="left" ID="ID_1580845514" CREATED="1502874538458" MODIFIED="1502874539764">
<edge COLOR="#808080"/>
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
<node ID="ID_1021239499" CREATED="1491377944091" MODIFIED="1491471738444"><richcontent TYPE="NODE">

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
<node TEXT="s0 Add some special chars like #, =, - (or icons) to indicate that a node can become a h1, h2 or h3, and also add an additional char (or icons) to tell the script NOT to make the current node a header (h1, h2, h3) but if it contains the special char above then it could become another header... like for example if the current node is at h1 level, and the char = would be placed there it would become a level 2 (for example)." ID="ID_1997008504" CREATED="1507809514788" MODIFIED="1507809660496"/>
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
<node ID="ID_1385998716" CREATED="1491377909323" MODIFIED="1491857861013"><richcontent TYPE="NODE">

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
<node TEXT="s0 Once the HTML export is done, make sure it converts nice in PDF using prince xml." ID="ID_1527205181" CREATED="1491385782079" MODIFIED="1491385805485">
<node TEXT="s0 The export to pdf is not nice, the pre statements are not wrapped.... check for that maybe..." ID="ID_1214898974" CREATED="1491379876748" MODIFIED="1491379893839">
<node TEXT="Try this maybe" ID="ID_1375656472" CREATED="1491379956510" MODIFIED="1491379959156">
<node TEXT="pre {&#xa;    white-space: pre-wrap;       /* Since CSS 2.1 */&#xa;    white-space: -moz-pre-wrap;  /* Mozilla, since 1999 */&#xa;    white-space: -pre-wrap;      /* Opera 4-6 */&#xa;    white-space: -o-pre-wrap;    /* Opera 7 */&#xa;    word-wrap: break-word;       /* Internet Explorer 5.5+ */&#xa;}" ID="ID_1993698142" CREATED="1491379960061" MODIFIED="1491379960765"/>
</node>
</node>
</node>
<node TEXT="// Todo" ID="ID_1211613002" CREATED="1491506376553" MODIFIED="1492507259073">
<node TEXT="s0 Main todos" ID="ID_1533377108" CREATED="1491561047413" MODIFIED="1491561050179">
<node TEXT="The groovy script to export to html should" ID="ID_1435406502" CREATED="1492506676658" MODIFIED="1492506676658">
<node ID="ID_1596859414" CREATED="1492506676658" MODIFIED="1492506704806"><richcontent TYPE="NODE">

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
<node ID="ID_1762569686" CREATED="1491576573950" MODIFIED="1491577071478"><richcontent TYPE="NODE">

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
<node TEXT="// Notes" ID="ID_1552958637" CREATED="1491506376553" MODIFIED="1491506376553">
<node TEXT="// If I have a big paragraph, add an empty node as its parent, or a node with s-1 for example so that I can fold it." ID="ID_241885775" CREATED="1491506376555" MODIFIED="1491506376555">
<node TEXT="// s0 Maybe add another way of ignoring the nodes like nodes starting with &lt; and ending with &gt; for example." ID="ID_534007137" CREATED="1491506376555" MODIFIED="1491506376555"/>
</node>
<node TEXT="// I can copy paste the html generated by the html doc script in freeplane to an email and it will keep the links and images from the toc etc... interesting maybe to do complex emails, I could compose emails using maps." ID="ID_1958177442" CREATED="1491506376555" MODIFIED="1491506376555"/>
<node TEXT="It is possible to link any section of the document to any other using the nodeid of a node. It is even possible to press f9 to add nodes and these will be converted to html links." ID="ID_1991018859" CREATED="1491514280876" MODIFIED="1491514380379"/>
<node TEXT="Nodes to link can be created inside paragraph, but i have to edit the html of the paragraph and add the link manually and it is possible to link to another node (section or item) of the current document using the nodeid." ID="ID_626153677" CREATED="1491514930057" MODIFIED="1491514985854"/>
<node TEXT="When I do docs for cases add them like this in fp in the same sub tab line" ID="ID_212532605" CREATED="1491570910946" MODIFIED="1491570946248">
<node TEXT="Image 4912.png" ID="ID_689296286" CREATED="1491570932827" MODIFIED="1491570932848">
<hook URI="file:/C:/Screenshots/Image%204912.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
</node>
<node TEXT="s0 Add a constant to specify if we want to use the memory or a file for" ID="ID_689971079" CREATED="1507715785689" MODIFIED="1507715804811"/>
</node>
<node ID="ID_1498185772" CREATED="1507097066835" MODIFIED="1507668010506"><richcontent TYPE="NODE">

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
<node ID="ID_1143598948" CREATED="1507028360774" MODIFIED="1507568700171"><richcontent TYPE="NODE">

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
<node TEXT="Logs" ID="ID_945105403" CREATED="1502874364781" MODIFIED="1507028507807">
<node TEXT="s0 Add AMT logs and maybe eventually central and pam logs?" ID="ID_1594451373" CREATED="1502714521215" MODIFIED="1507028507804"/>
</node>
<node TEXT="MAMDoc" ID="ID_320449551" CREATED="1502874369049" MODIFIED="1502874373243">
<node ID="ID_398035361" CREATED="1497203378676" MODIFIED="1497203389323"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s0 1) formulas are kept as formulas and not as values
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
<node ID="ID_1856277357" CREATED="1497110730335" MODIFIED="1497110752600"><richcontent TYPE="NODE">

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
<node TEXT="s0 When there are 2 links one after another they appear too close to each other, maybe add spacing." ID="ID_785364774" CREATED="1497428298837" MODIFIED="1497428335804">
<node TEXT="Image 5245.png" ID="ID_1224112368" CREATED="1497428325837" MODIFIED="1497428325856">
<hook URI="file:/C:/Screenshots/Image%205245.png" SIZE="1.0" NAME="ExternalObject"/>
</node>
</node>
<node TEXT="Code Browser" ID="ID_1949937400" CREATED="1491595454015" MODIFIED="1491595457359">
<node TEXT="s0" ID="ID_218020315" CREATED="1491595465257" MODIFIED="1491595468801">
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
<node ID="ID_692479604" CREATED="1491379142227" MODIFIED="1491382247036"><richcontent TYPE="NODE">

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
<node TEXT="s0 Documents to produce" ID="ID_374778695" CREATED="1491471635114" MODIFIED="1491471639795">
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
<node TEXT="s0 The script doesn&apos;t take into account the formats that are applied using conditions." ID="ID_1763026263" CREATED="1498323244667" MODIFIED="1498323350938">
<node TEXT="s0 Maybe ask the freeplane list about it" ID="ID_1205844362" CREATED="1498323353766" MODIFIED="1498323398469"/>
</node>
<node TEXT="s0 Problem with tag closure" ID="ID_64632366" CREATED="1495724178998" MODIFIED="1495724184475">
<node TEXT="Image 5120.png" ID="ID_768831087" CREATED="1495724188879" MODIFIED="1495724188902">
<hook URI="file:/C:/Screenshots/Image%205120.png" SIZE="0.97402596" NAME="ExternalObject"/>
</node>
</node>
</node>
<node ID="ID_332879538" CREATED="1497271691174" MODIFIED="1497272104400"><richcontent TYPE="NODE">

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
<node TEXT="D:\Work\MindMaps\Doc" ID="ID_1313777456" CREATED="1497271772588" MODIFIED="1497271775049" LINK="file:/D:/Work/MindMaps/Doc">
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
<node TEXT="scripts" ID="ID_590046166" CREATED="1497271798618" MODIFIED="1497271798620" LINK="file:/C:/Users/alexandre.viau/AppData/Roaming/Freeplane/1.5.x/scripts/">
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
<node TEXT="NOTES" ID="ID_1962099516" CREATED="1491378101457" MODIFIED="1491379281290">
<cloud COLOR="#ffffcc" SHAPE="ARC"/>
<node TEXT="Use this export format" ID="ID_663919899" CREATED="1491380045067" MODIFIED="1491380049449">
<node TEXT="Export to HTML (.html)" ID="ID_1991758760" CREATED="1491380040094" MODIFIED="1491380041496"/>
</node>
<node TEXT="In the documents, use the automatic format so I get title size and colors, and put empty subtitle 1 and subtitle 2 if there are none, so the paragraphs have the same fonts and colors." ID="ID_1256301890" CREATED="1491380112674" MODIFIED="1491380162156"/>
<node TEXT="Use the html snippets to add html code in the notes, like tables for example" ID="ID_1036740319" CREATED="1491378111609" MODIFIED="1491378112699">
<node TEXT="Html" ID="ID_1256676068" CREATED="1491378033956" MODIFIED="1491378033960" LINK="file:/D:/Work/MindMaps/Snippets.mm#ID_967614626"/>
</node>
<node TEXT="Show the notes panel at the bottom" ID="ID_1590612009" CREATED="1491378119695" MODIFIED="1491378128833"/>
<node TEXT="When the map is fully folded, all subnodes will have a + sign to be able to expand them" ID="ID_260595462" CREATED="1491379142227" MODIFIED="1491379168980"/>
<node TEXT="There are 2 ways to compose html documents now, with the MapToHtmlDoc file using the automatic formatting, and the MapToHtmlDoc.groovy script to create structures and links etc automatically, this is the quickest way but less flexible, and the freeplane html template (i created) that use map conditional formatting." ID="ID_70981266" CREATED="1491741872190" MODIFIED="1491742012875"/>
<node TEXT="Use also templates to read code files like workflows etc (add automatic formats...)" ID="ID_788498621" CREATED="1491742057344" MODIFIED="1491742082450"/>
</node>
<node TEXT="D:\Work\MindMaps\Doc" ID="ID_1524916627" CREATED="1491379829590" MODIFIED="1491379832766" LINK="file:/D:/Work/MindMaps/Doc">
<node TEXT="Workflow Error Statistics" ID="ID_1247898034" CREATED="1493370689662" MODIFIED="1493371222393" LINK="file:/D:/Work/MindMaps/Doc/MAMWfMonStatsDoc.mm#ID_1723255651">
<font SIZE="24"/>
<node TEXT="Interplay MAM&#xa;Workflow Error Statistics" ID="ID_1998137565" CREATED="1491376850326" MODIFIED="1491376850330" LINK="file:/D:/Work/MindMaps/Doc/MAMWfMonStatsDoc.mm#ID_1723255651">
<node ID="ID_1568153345" CREATED="1491379740492" MODIFIED="1493310834492"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 Convert to PDF
    </p>
  </body>
</html>
</richcontent>
<node ID="ID_1050915848" CREATED="1491379797655" MODIFIED="1493310837288"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      s-1 C:\Tools\princeXml\bin\prince.exe D:\Work\MindMaps\Doc\MAMWfMonStatsDoc.html D:\Work\MindMaps\Doc\MAMWfMonStatsDoc.pdf
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="D:\Work\MindMaps\Doc\MAMWfMonStatsDoc" ID="ID_1655532089" CREATED="1491808184753" MODIFIED="1491808188332" LINK="file:/D:/Work/MindMaps/Doc/MAMWfMonStatsDoc"/>
</node>
</node>
<node TEXT="Log Error Statistics" ID="ID_698538903" CREATED="1493370695646" MODIFIED="1493371220349" LINK="file:/D:/Work/MindMaps/Doc/MAMLogStatsDoc.mm#ID_1723255651">
<font SIZE="24"/>
</node>
</node>
</node>
</node>
</node>
</map>
