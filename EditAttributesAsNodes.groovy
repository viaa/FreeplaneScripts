// @ExecutionModes({ON_SELECTED_NODE})

// Edit attributes as nodes

    /// Documentation
        // Version 2
        // Description
            // This script was written to ease the attribute editing.
            // It creates a new child node to this node named <attributes>, and populates this <attributes> node with children nodes for all the attributes of the node. 
            // Then the user can edit the attributes as nodes, add attributes and delete some, then if the user activates the script again, the attribute nodes are inserted in the node as its attributes and the <attributes> node is finally deleted.
            // The attributes are sorted before to be displayed as nodes and they are sorted back when inserted in the node.
            // If an attribute is a comma-separated list like item1, Item2, Item3, it will be splitted into nodes, then the user can edit the list of nodes, and it will be joined by together upon insertion of the attributes. The nodes will be sorted.
            // If the hotkey is pressed again on a attribute value, a picklist is shown to select values for this attribute, the list is taken from the attributes with the same name in the current map. If the attribute value is a comma-separated list, then the list can be multi-selected.
        // USAGE:
            // 1- Press the hotkey (mapped to this script) on a node that contains attributes, the attributes will be shown as nodes
            // 2- Press the same hotkey again on an attribute value (or on the '<comma-separated list> node) and a picklist will be show allowing to select values for the attribute (comma-separated list's picklist has multiselection)
            // 3- Press again the same hotkey on the values from the picklist to check/uncheck them, the values of the attributes will change at the same time.
            // 4- To close the picklist, press the same hotkey on the value (or on the '<comma-separated list> node) and the picklist should close.
            // 5- Press the hotkey on the '<attributes>' node to show a list of all the attribute names in the current map to select from. Press the hotkey on these attribute names in the picklist to check/uncheck them, then press the hotkey again on the <attributes> node to set the list of attribute to the selection in the picklist.
            // 6- To close the attributes as nodes and 'save' the attributes in the node, press the same hotkey on the root node where the attributes are stored.
            // 7- Add new nodes to picklists and then press the hotkey on them and they will become checked. This way it allow to add new picklists values. It works also for the attributes picklist also.
            // 8- So basically, simply press the hotkey on any node that has the list icon or the checkbox icon.
        // Bugs
            // When closing the comma-separated list, it should update the inner attributes because then re-opening it, should show then values that where added (or removed) before closing it. 
            // If a comma-separated list attribute (in other attributes) is empty on opening, then the picklist doesn't show, there is an error message. It shows only when they is comma separated data already inside. 
            // If an attribute has no value node there is a null error.
            // If an comma-separated attribute is added with the attributes picklist, it has no value and if then we open the picklist for this added attribute, it shows values as comma-separated value (text separated with commas)... I am not sure this can be fixed as there is no really way of knowing this attribute is comma separated by checking data from this node only, I should check globally in the other attributes with the same name in the map if this value is a commaseparated list, then I would need to set maybe a comma as the value in the inner attributes to indicate it is a comma-separated list but it is empty. So it is not so much a bug but it would be better to provide expected behavior with this attribute. 
        // Todo
            // s0 Use the println "grandparent is " + node?.parent?.parent?.text kind of syntax instead of checking grand-parent != null etc
            // s2 Change c.findAllDepthFirst by c.findAll()... it is not useful and mistaken to use c.findAllDepthFirst()
            // Maybe if an attribute value as a link for example, this link should be preserved when added back and restore from the inner attributes.. now it is suppressed. 
            // Maybe see if I can put a + and - icon to the node, telling this way their state if they are opened or closed, depending on their state.
            // FF20160408235157 The attribute picklist value delete should be also done when closing the rootnode, but now it is done only for the value node
            // Try to use the function node.attributes.containsKey() to check if an attribute exists instead of looping... change the attribute looping code.
            // Try to use code like node['tags'] to get the value of an attribute instead of the .get(index) function...so that I may get the value from the name.
            // FR20160331111321 Maybe this code for the comma-separated list should be in a function for the commaseparated list functions, and called here by passing the node and setting the context
            // FR20160405103753 If a value is deleted in a (comma-separated) value picklist, then it should be deleted everywhere in the map
                // The values deleted should be deleted from comma-separated values
            // Now that the setcontext function works and I can operate on surrounding nodes, remove the code that 'closes' the comma separated (that is in the attributesdeactivate I think) and simply call the commaseparateddeactivate from the attributesdeactivate
            // Maybe in the multi-select picklist, if the user holds ctrl and click several nodes to select multiple nodes, then pressing the hotkey would select/unselect these nodes depending if they are checked or unchecked.
            // Maybe do a date picklist to select dates and times, a tree by year > month > day > hour > minutes
            // If there are 2 attributes with the same name and one of them is a VALUE and the other is a COMMA_SEPARATED_LIST_VALUE and the VALUE is first in the list, then the defineType() function will detect it as a VALUE, which is fine but maybe there could be a validation to prevent duplicated attribute names.
        // Git
            // freeplane:/%20/D:/Work/MindMaps/Commands.mm#ID_262304796
        // Version history
            // 2016-04-08_11.22.09
                // Added: FR20160401230009 If a value is deleted in a (single) value picklist, then it should be deleted everywhere in the map 
            // 2016-04-05_10.13.09
                // Added: Icon for the <comma-separated list> node
                // Fixed: Bug20160405102428 When adding a value to the comma-separated list value picklist, and then closing the picklist, the value is added to the comma-separated list, but then reopening the comma-separated picklist won't show this newly added value although it is in the list of values as nodes for the comma-separated. It should be added.
                // Fixed: Bug20160404235643 Opening the value picklist should add also the current value of the attribute value to the picklist if it is not there yet. 
            // 2016-04-03_03.13.48
                // Fixed: If have no attributes in the node, then I add 1, and then again I open the attributes and I delete it from the attributes picklist to remove it from the inner node, then when I deactivate the node (close the <attributes> I have an index error: Negative array index -1 too large for array size()) 
                // Done: Several small changes like removing debugging code and adding comments. 
            // 2016-03-31_08.12.55
                // Fixed: When showing attributes, there were no check boxes (introduced while fixing and improving)
                // Done: Feature request: FR20160329105156 Delete the picklist values would remove the attributes globally at the map level
                // Fixed: the deletion of all the attributes in the map for the attributes deleted in the picklist (it is in the attributesdeactivate function)
                // Fixed: After deleting or adding items to the attributes node list, if I activate the picklist it should add the items to the inner attributes
                // Fixed: If the attributes are closed from the rootNode with the picklist closed, then the attributes are not added to the innerAttributes, but if it is opened then they are added.
                // Fixed: If a item is added to the nodes attributes and after the attributes picklist is opened, the new item(s) where not added to the picklist,,.it is fixed now.
                // Fixed: If I check a new item in the attributes picklist and then press the hotkey from the rootNode, the new item is not added to the rootNodes inner attributes, moreover the <picklist> item is added to the root nodes attributes.
                // Fixed: Closing the attributes (from the <attributes> nodes) doesn't add to the rootNode the newly checked attributes from the picklist 
                // Fixed: Closing the rootNode deletes the attributes...
            // 2016-03-30_08.05.53 
                // Fixed: Closing the root node doesn't update the inner attributes (it was new bug introduced with changes)
                // Fixed: Closing the nodes attributes dosen't update the inner attributes 
            // 2016-03-29_11.01.44
                // Fixed: (Bug20160329122350) There seems to be a new bug, if the picklist is opened for the attributes, and the rootnode is deactivated, then picklist is added as an inner attribute.... it doesn't do that for the commaseparated pick list and the value picklist. If the attributes picklist is closed before the rootnode then it is fine. I should deactivate the attributes before. See this reference Bug20160329122350 in the code
            // 2016-03-24_13.41.01 
                // Fixed: If a new value is added to the comma-separated picklist and then it is checked, it is added to the comma-separated list and its node values but is not sorted. This is fixed.
            // 2016-03-24_01.22.32
                // Fixed: If an attribute value had a empty value (not no node) but a node without text, there was an index error because of the comparator function. It is fixed.
            // 2016-03-24_12.55.19
                // Added: Possibility to add new attributes value to the attributes picklist.
            // 2016-03-24_08.59.14
                // Added: Icons to identify the nodes that can be expanded with the hotkey. So it is clear now to the users where they they can press the hotkey: on the list icon or on the checkbox icon.
                // Modif: Small change in conditions in the defineType()
            // 2016-03-23_10.34.46 (uploaded)
                // Fixed: I fixed an important bug: if the node had children the attributes as nodes where not showing. I didn't see that because my task management nodes have all information as attributes.
            // 2016-03-23_01.48.40 (uploaded)
                // Fixed: When the node attributes are closed, and there were comma-separated picklist opened with modified list of attribute values (like values added) but without having the comma-separated list 'hotkeyed' yet so the comma-separated value is set to the list of attributes, the comma-separated list was not set, but now it is set before closure.
                // Fixed: The sorting of the comma-separated values when the list of comma-separated value nodes is closed.
            // 2016-03-23_01.02.46 (uploaded)
                // Added: Possibility to add picklist values: Add new nodes to picklists and then press the hotkey on them and they will become checked. This way it allow to add new picklists values.
            // 2016-03-23_12.49.43 (uploaded) 
                // Fixed: Something that happened with the comma-separated list when opened, I fixed that
                // Modified: The comments header order
            // 2016-03-23_11.03.46 (uploaded)
                // Fixed: The picklist of the comma-separated values, the split on ', ' messed-up the sorting, so the elements needed to be trimmed before to be sorted.
            // 2016-03-22_07.58.19 (uploaded)
                // Added: Picklist for attributes: if attribute names in the picklist are unchecked, they will be removed from the list of attributes. If some attribute names in the picklist are checked but they are not in the list of attributes, then will be added with an empty value.
                // Fixed: Sorting everywhere adding a global comparator with case insensitive
                // Fixed: Tokenize had to split on ', ' rather than ',' or the sorting was changing because of the left-over space
                // Modified: I changed some variable names like name for attributeName and i for attributeIndex
            // 2016-03-22_01.11.32 (uploaded) 2016-03-22_11.11.42, added toString() before the contains()
                // Fixed: A bug introduced with the 
            // 2016-03-22_12.27.38 (uploaded)
                // Fixed: It is not possible now to have all values of the value picklist unchecked, 1 has to be checked, so uncheck of the current item doesn't uncheck.
            // 2016-03-22_11.11.42 (uploaded)
                // Modif: defineType() and defineState() functions moved in the initialize() function
                // Fixed: If after editing a comma-separated list, there is only 1 value in the comma-separated list, then it is not detected as a commaseparated list, then doing the hotkey on the node or on the <comma-separated list>  node has strange behaviors... It is because it is detected as a value after edition, but should be VALUE_COMMA_SEPARATED. This is fixed now by checking the value of the innerAttribute in the node and not the current value of the node.
            // 2016-03-22_09.24.54 (uploaded)
                // Fixed: Bug on the map root node
                // Modif: Removed the message and the code to manage the node that don't have attributes, and I added code to set the type as NODE for this and it manages itself as a deactivated NODE.
                // Addition: Added some initialized variables and put the initialization code in a function.
                // Modif: I used the lastChildText variable instead of the LastChildIndex at 2 places. 
            // 2016-03-22_07.49.50 (uploaded)
                // Added: Message if the node doesn't have attributes, then a <attributes> node is created to allow manual creation of attributes.
            // 2016-03-22_07.27.19  (uploaded)
                // Fixed: Sorting the comma-separated node values
            // 2016-03-22_07.20.21 (uploaded)
                // Fixed: picklists on numeric values was not working
            // 2016-03-22_00.57.46  (uploaded)

    /// Declaration 
        /* DEBUG = true */
        DEBUG = false

        // Types
            UNDEFINED = 0
            NODE = 1
            ATTRIBUTES = 2
            ATTRIBUTES_PICKLIST = 3
            ATTRIBUTES_PICKLIST_VALUE = 4
            ATTRIBUTE = 5
            VALUE = 6
            VALUE_COMMA_SEPARATED = 7
            PICKLIST = 8
            PICKLIST_VALUE = 9
            COMMA_SEPARATED_LIST = 10
            COMMA_SEPARATED_LIST_VALUE = 11
            COMMA_SEPARATED_LIST_PICKLIST = 12
            COMMA_SEPARATED_LIST_PICKLIST_VALUE = 13
        // States
            NONE = 0
            ACTIVATED = 1
            DEACTIVATED = 2
        // The signature text to identify nodes
            ATTRIBUTES_TEXT = '<attributes>'
            PICKLIST_TEXT = '<picklist>'
            COMMA_SEPARATED_LIST_TEXT = '<comma-separated list>'
        // Icons
            LIST_ICON = 'list'

    /// Functions 
        /// Initialization
            def initialization() {
                // Used to compare values (case insensitive) during sorting.
                    // NOTE: The sorting of the COMMA_SEPARATED_LIST_TEXT is not using the comparator because the children objects seems not Comparable so it is hard-coded as .toLower() (insensitive).
                    def caseInsensitive = true
                    comparator = {
                        if (it.size() > 0) {
                            def string = it[0]
                            if (caseInsensitive)
                                string.toLowerCase()
                            else
                                string
                            }
                            else ''
                        }
                    setContext(node)
                }
            def setContext(pNode) { // Function that defines where we are in the try and what action to take and the properties useful for the current context
                // NOTE: When the set context is used and then the pNode in a function, I have to explicitly use for example 'pNode.children[...' because only 'children' will not use the pNode passed but the current node, not the node of the context that was set.
                // pNode has children
                    hasChildren = false
                    if (!pNode.children.empty)
                        hasChildren = true
                // Index of the last child
                    lastChildIndex = -1
                    if (hasChildren)
                        lastChildIndex = pNode.children.size() - 1
                // Text of the last child pNode
                    lastChildText = ''
                    if (hasChildren)
                        lastChildText = pNode.children[lastChildIndex].text
                // Text of the parent pNode
                    parentText = ''
                    if (pNode.parent != null)
                        parentText = pNode.parent.text
                // Text of the grandParent pNode
                    grandParentText = ''
                    if (pNode.parent != null)
                        if (pNode.parent.parent != null)
                            grandParentText = pNode.parent.parent.text
                // pNode has "inner" attributes
                    hasInnerAttributes = false
                    if (!pNode.attributes.empty)
                        hasInnerAttributes = true
                // pNode has icons
                    hasIcons = false
                    if (pNode.icons.size() > 0)
                        hasIcons = true
                type = defineType(pNode)
                state = defineState(pNode, type)
            }
        /// Utility 
            // Sort the attributes
                def sortAttributes(pNode) {
                    def nodeAttributes = pNode.attributes
                     
                    // save original attributes
                        def attribs = []
                        nodeAttributes.names.eachWithIndex { attributeName, attributeIndex ->
                            attribs.add([attributeName, nodeAttributes.get(attributeIndex)])
                        }
                     
                    // replace attributes
                        nodeAttributes.clear()
                        attribs.sort(comparator).each { k, v ->
                            nodeAttributes.add(k, v)
                        }
                    return nodeAttributes
                    }
            // Get the attribute inner value from a attributeName
                def getInnerAttributeValue(rootNode, searchedAttributeName) {
                        attributeValue = ''
                        rootNode.attributes.names.eachWithIndex { attributeName, attributeIndex ->
                            if (attributeName == searchedAttributeName)
                                attributeValue = rootNode.attributes.get(attributeIndex)
                            }
                        return attributeValue
                    }
            // Message box (mainly to debug)
                def m(message) {
                    javax.swing.JOptionPane.showMessageDialog(null, message); 
                    }
                // Append debug messages to the debug log
                def d(message) {
                    if (DEBUG) {
                        BufferedWriter bw = new BufferedWriter(new FileWriter("c:/temp/debug.txt", true));
                        bw.write(message);
                        bw.newLine();
                        bw.flush();
                        bw.close();
                        }
                    }
        /// Object definitions
            // Define type
                def defineType(pNode) {
                    def type = UNDEFINED
                    // NODE
                        if (hasInnerAttributes)
                            type = NODE
                        // ATTRIBUTES
                            else if (pNode.text == ATTRIBUTES_TEXT)
                                type = ATTRIBUTES
                            // ATTRIBUTES_PICKLIST
                                else if (parentText == ATTRIBUTES_TEXT && pNode.text == PICKLIST_TEXT) 
                                    type = ATTRIBUTES_PICKLIST
                                // ATTRIBUTES_PICKLIST_VALUE
                                    else if (grandParentText == ATTRIBUTES_TEXT && parentText == PICKLIST_TEXT) 
                                        type = ATTRIBUTES_PICKLIST_VALUE
                            // ATTRIBUTE
                                else if (parentText == ATTRIBUTES_TEXT)
                                    type = ATTRIBUTE
                                // VALUE AND VALUE_COMMA_SEPARATED
                                    else if (grandParentText == ATTRIBUTES_TEXT) {
                                        // Get the inner attribute value from the rootNode because if after the comma separated list modification, if there is only 1 item in the list, it will be considered a VALUE and not at VALUE_COMMA_SEPARATED_LIST, so check the inner attribute to be sure what kind of node it is
                                            def innerAttributeValue = getInnerAttributeValue(pNode.parent.parent.parent, parentText)
                                        if (innerAttributeValue.toString().contains(','))
                                            type = VALUE_COMMA_SEPARATED
                                        else
                                            type = VALUE
                                        }
                                    // PICKLIST
                                        else if (pNode.text == PICKLIST_TEXT && parentText != COMMA_SEPARATED_LIST_TEXT)
                                            type = PICKLIST
                                        // PICKLIST_VALUE
                                            else if (parentText == PICKLIST_TEXT && grandParentText != COMMA_SEPARATED_LIST_TEXT)
                                                type = PICKLIST_VALUE
                                    // COMMA_SEPARATED_LIST
                                        else if (pNode.text == COMMA_SEPARATED_LIST_TEXT)
                                            type = COMMA_SEPARATED_LIST
                                        // COMMA_SEPARATED_LIST_VALUE
                                            else if (parentText == COMMA_SEPARATED_LIST_TEXT && pNode.text != PICKLIST_TEXT)
                                                type = COMMA_SEPARATED_LIST_VALUE
                                            // COMMA_SEPARATED_LIST_PICKLIST
                                                else if (parentText == COMMA_SEPARATED_LIST_TEXT && pNode.text == PICKLIST_TEXT)
                                                    type = COMMA_SEPARATED_LIST_PICKLIST
                                                // COMMA_SEPARATED_LIST_PICKLIST_VALUE
                                                    else if (grandParentText == COMMA_SEPARATED_LIST_TEXT && parentText == PICKLIST_TEXT)
                                                        type = COMMA_SEPARATED_LIST_PICKLIST_VALUE
                    // NODE (without attributes) 
                        else if (!hasInnerAttributes)
                            type = NODE

                    // Debug type
                        if (DEBUG) {
                            def sType = ''
                            if (type == UNDEFINED)
                                sType = 'UNDEFINED'
                            else if (type == NODE)
                                sType = 'NODE'
                            else if (type == ATTRIBUTES)
                                sType = 'ATTRIBUTES'
                            else if (type == ATTRIBUTE)
                                sType = 'ATTRIBUTE'
                            else if (type == VALUE)
                                sType = 'VALUE'
                            else if (type == VALUE_COMMA_SEPARATED)
                                sType = 'VALUE_COMMA_SEPARATED'
                            else if (type == PICKLIST)
                                sType = 'PICKLIST'
                            else if (type == PICKLIST_VALUE)
                                sType = 'PICKLIST_VALUE'
                            else if (type == COMMA_SEPARATED_LIST)
                                sType = 'COMMA_SEPARATED_LIST'
                            else if (type == COMMA_SEPARATED_LIST_VALUE)
                                sType = 'COMMA_SEPARATED_LIST_VALUE'
                            else if (type == COMMA_SEPARATED_LIST_PICKLIST)
                                sType = 'COMMA_SEPARATED_LIST_PICKLIST'
                            else if (type == COMMA_SEPARATED_LIST_PICKLIST_VALUE)
                                sType = 'COMMA_SEPARATED_LIST_PICKLIST_VALUE'
                            m(sType)
                            }
                        return type
                    }
            // Define state
                def defineState(pNode, type) {
                    def state = NONE
                    // NODE
                        if (type == NODE) {
                            if (lastChildText == ATTRIBUTES_TEXT)
                                state = ACTIVATED
                            else
                                state = DEACTIVATED
                        }
                        // ATTRIBUTES
                            else if (type == ATTRIBUTES) {
                                if (lastChildText == PICKLIST_TEXT)
                                    state = ACTIVATED
                                else
                                    state = DEACTIVATED
                                }
                            // ATTRIBUTES_PICKLIST (NO ACTION)
                                // ATTRIBUTES_PICKLIST_VALUE
                                else if (type == ATTRIBUTES_PICKLIST_VALUE) {
                                    if (hasIcons) {
                                        if (pNode.icons[0] == 'checked')
                                            state = ACTIVATED
                                        else if (pNode.icons[0] == 'unchecked')
                                            state = DEACTIVATED
                                        }
                                        else // If there is no icons set as DEACTIVATED so it will be checked when pressing the hotkey.
                                            state = DEACTIVATED
                                        }
                            // ATTRIBUTE
                                else if (type == ATTRIBUTE) {
                                    if (lastChildText == COMMA_SEPARATED_LIST_TEXT)
                                        state = ACTIVATED
                                    }
                                // VALUE
                                    else if (type == VALUE) {
                                        if (!hasChildren)
                                            state = DEACTIVATED
                                        else if (lastChildText == PICKLIST_TEXT)
                                            state = ACTIVATED
                                        }
                                // VALUE_COMMA_SEPARATED
                                    else if (type == VALUE_COMMA_SEPARATED) {
                                        if (lastChildText == COMMA_SEPARATED_LIST_TEXT)
                                            state = ACTIVATED
                                        else
                                            state = DEACTIVATED
                                        }
                                    // PICKLIST (NO ACTION)
                                        // PICKLIST_VALUE
                                            else if (type == PICKLIST_VALUE) {
                                                if (hasIcons) {
                                                    if (pNode.icons[0] == 'checked')
                                                        state = ACTIVATED
                                                    else if (pNode.icons[0] == 'unchecked')
                                                        state = DEACTIVATED
                                                    }
                                                    else // If there is no icons set as DEACTIVATED so it will be checked when pressing the hotkey.
                                                        state = DEACTIVATED
                                                    }
                                    // COMMA_SEPARATED_LIST
                                        else if (type == COMMA_SEPARATED_LIST) {
                                            if (lastChildText == PICKLIST_TEXT)
                                                state = ACTIVATED
                                            else
                                                state = DEACTIVATED
                                            }
                                        // COMMA_SEPARATED_LIST_VALUE
                                            else if (type == COMMA_SEPARATED_LIST_VALUE) {
                                                if (pNode.icons[0] == 'checked')
                                                    state = ACTIVATED
                                                else if (pNode.icons[0] == 'unchecked')
                                                    state = DEACTIVATED
                                                }
                                            // COMMA_SEPARATED_LIST_PICKLIST
                                                else if (type == COMMA_SEPARATED_LIST_PICKLIST)
                                                    state = ACTIVATED
                                                // COMMA_SEPARATED_LIST_PICKLIST_VALUE
                                                    else if (type == COMMA_SEPARATED_LIST_PICKLIST_VALUE) {
                                                        if (hasIcons) {
                                                            if (pNode.icons[0] == 'checked')
                                                                state = ACTIVATED
                                                            else if (pNode.icons[0] == 'unchecked')
                                                                state = DEACTIVATED
                                                            }
                                                            else // If there is no icons set as DEACTIVATED so it will be checked when pressing the hotkey.
                                                                state = DEACTIVATED
                                                        }

                    // Debug state
                        if (DEBUG) {
                            def sState = ''
                            if (state == NONE)
                                sState = 'NONE'
                            else if (state == DEACTIVATED)
                                sState = 'DEACTIVATED'
                            else if (state == ACTIVATED)
                                sState = 'ACTIVATED'
                            m(sState)
                            }
                        return state
                            }
        /// Actions
            // NODE
                def nodeActivate() { // Show the attributes and their values as nodes, if attributes values are comma-separated list they are expanded as a COMMA_SEPARATED_LIST_TEXT branch
                    // Sort the attributes
                        node = sortAttributes(node)

                    // Create the ATTRIBUTES node that will contain the attributes as its children
                        attributesNode = node.createChild()
                        attributesNode.text = ATTRIBUTES_TEXT
                        attributesNode.icons.addIcon(LIST_ICON)

                    // Loop the attributes' names and indexes to add them as nodes to the ATTRIBUTES node
                        node.attributes.names.eachWithIndex{ attributeName, attributeIndex ->
                            // Get the attribute value using the index
                                attributeValue = node.attributes.get(attributeIndex)
                            // Create the attribute name node
                                attributeNameNode = attributesNode.createChild()
                                attributeNameNode.text = attributeName
                            // Create the attribute value node (if it is a comma-separated list, it will be added as it is, a comma-separated list)
                                attributeValueNode = attributeNameNode.createChild()
                                attributeValueNode.text = attributeValue
                                attributeValueNode.icons.addIcon(LIST_ICON)
                            // If the value of the attribute is a comma-separated list, then split it to child nodes
                                if (attributeValue.toString().contains(',')) {
                                    commaSeparatedListNode = attributeValueNode.createChild()
                                    commaSeparatedListNode.text = COMMA_SEPARATED_LIST_TEXT
                                    commaSeparatedListNode.icons.addIcon(LIST_ICON)
                                    // Split to child nodes (as items of the list)
                                        commaSeparatedListValues = attributeValue.tokenize(',')*.trim().sort(comparator).unique() // Items must be trimmed before to be sorted or the sort will be broken
                                        commaSeparatedListValues.each {
                                            listItemNode = commaSeparatedListNode.createChild()
                                            listItemNode.text = it
                                            }
                                    }
                            }
                    }
                def nodeDeactivate() { // Hide the attributes as nodes and set the inner attributes to the values set in the nodes
                    // Deactivate all the attributes
                        // FF20160408235157 
                        //node.children[node.children.size() - 1].children.each {
                            //setContext(it.children[0])
                            //valueDeactivate(it.children[0])
                            //}

                    // Deactivate the attributes
                        setContext(node.children[lastChildIndex]) // Impersonate as like to be the ATTRIBUTES_TEXT node
                        attributesDeactivate(node.children[node.children.size() - 1])

                    // Delete the ATTRIBUTES_TEXT node
                        setContext(node) // Switch back "to be" the rootNode
                        node.children[lastChildIndex].delete()
                     }
            // ATTRIBUTES
                def attributesActivate() {
                    // First add the attributes as nodes to the inner attributes
                        attributesAddToInnerAttributes(node)

                    setContext(node) // The setContext() is used in attributesAddToInnerAttributes() so we need to set it here

                    // Create the ATTRIBUTE_PICKLIST node
                        pickListNode = node.createChild()
                        lastChildIndex++ // It has to be incremented because we add a node 
                        pickListNode.text = PICKLIST_TEXT
                        def attributeNames = []
                        // Loop all the nodes in the map
                            c.findAllDepthFirst().each { n ->
                                // If the node has attributes
                                    if (!n.attributes.empty) {
                                        // Loop each attributes in the node
                                            n.attributes.names.eachWithIndex { attributeName, attributeIndex ->
                                                // Put the attributes (uniquely) in a temporary list
                                                    attributeNames.add(attributeName.trim())
                                                }
                                        attributeNames = attributeNames.unique() // Reduce the list to take less memory
                                        }
                                }
                        // Add the attributes as nodes to the picklist
                            attributeNames.sort(comparator).unique().each { 
                                newValueNode = pickListNode.createChild()
                                newValueNode.text = it
                                }
                        // Check the values in the picklist that correspond to the attributes values list
                            node.children[lastChildIndex].children.each { // Loop the ATTRIBUTE_PICKLIST values
                                    pickListNode = it
                                    pickListNode.icons.clear()
                                    pickListNode.icons.addIcon('unchecked')
                                    // Loop the attribute values nodes and see if the current picklist value is there, if yes then check it it in the picklist value
                                        node.children.each {
                                            if (it.text != PICKLIST_TEXT) {
                                                if (pickListNode.text.toString().trim() == it.text.toString().trim()) { // If the picklist value is equal to the comma-separated value 
                                                        pickListNode.icons.clear()
                                                        pickListNode.icons.addIcon('checked')
                                                    }
                                                }
                                            }
                                }
                    }
                def attributesDeactivate(pNode) {
                    // Check if the attributes node has a picklist. (This condition is because this function is used in another context, so when it is used there may be no picklist opened, so we don't process the picklist code then)
                    hasPickList = false
                    if (!pNode.children.empty)
                        if (pNode.children[lastChildIndex].text == PICKLIST_TEXT)
                            hasPickList = true
                    if (hasPickList) { 
                        // Remove the picklist removed attributes everywhere in the map
                           // FR20160329105156 
                           // Loop all nodes in the map
                               c.findAllDepthFirst().each { n ->
                               // If the node has attributes
                                    if (!n.attributes.empty) {
                                        // Loop each attributes in the current node of the map
                                            n.attributes.names.eachWithIndex { attributeName, attributeIndex ->
                                                // For each of the attribute check if it is in the PICKLIST, if not then delete it from the current node
                                                    found = false
                                                    pNode.children[lastChildIndex].children.each { // Loop the PICKLIST
                                                        // d(attributeName + ' = ' + it.text)
                                                        if (attributeName == it.text)
                                                            found = true
                                                        }
                                                    // If the attribute was not found in the PICKLIST, delete it
                                                        if (!found) {
                                                            //d('delete ' + attributeName)
                                                            // Tofix
                                                            n.attributes.removeAll(attributeName)
                                                            }
                                                }
                                        }
                                }
                        // Picklist checked to temp list
                            def attributes = []
                            // Totest: It seems that the 2 blocks of code below that get the attributes could be one 1 that gets the checked attributes, it seems only the 2nd one could be enough 
                            // Keep selected attributes: Put the attributes and their names to a temp 'attributes' list if they are checked in the picklist (not to have the attributes that are unchecked in the picklist)
                                // Loop the attributes names
                                    pNode.children.each { 
                                        if (it.text != PICKLIST_TEXT) {
                                            attributeName = it.text
                                            attributeValue = it.children[0].text
                                            // Loop the PICKLIST attribute names
                                                pNode.children[lastChildIndex].children.each {
                                                    // If the attribute name is found in the picklist and it is checked, then add it to the temporary array
                                                        if (it.text == attributeName && it.icons[0] == 'checked') {
                                                            d(attributeName + ' ' + attributeValue)
                                                            attributes.add([attributeName, attributeValue])
                                                            }
                                                    }
                                            }
                                        }
                            // Add newly selected items: Add also the attributes that are checked in the picklist to the 'attributes' list and that are not in the attribute node list
                                def found = false
                                // Loop the PICKLIST
                                    pNode.children[lastChildIndex].children.each {
                                        // If checked in the picklist, see if it is in the temporary list, if not add it
                                            if (it.icons[0] == 'checked') {
                                                pickListAttributeName = it.text
                                                found = false
                                                attributes.each { attributeName, attributeValue ->
                                                    if (attributeName == pickListAttributeName)
                                                        found = true
                                                    }
                                                if (!found) {
                                                    // Add to the attributes list with an empty value
                                                        d(pickListAttributeName)
                                                        attributes.add([pickListAttributeName, ''])
                                                    }
                                                }
                                        }

                        // Create all nodes from the temporary list
                            // Remove all child nodes
                                pNode.children.each {
                                    it.delete()
                                    }

                            // Create the nodes
                                attributes.sort(comparator).each { attributeName, attributeValue ->
                                    // Create the attribute name node and set it
                                        attributeNameNode = pNode.createChild()
                                        attributeNameNode.text = attributeName
                                        d(attributeNameNode.text)
                                    // Create the attribute value node and set it
                                        attributeValueNode = attributeNameNode.createChild()
                                        attributeValueNode.text = attributeValue
                                        attributeValueNode.icons.addIcon(LIST_ICON)
                                    }

                        }

                    // Add each node as an attribute "inside" the root node
                        d(pNode.text)
                        attributesAddToInnerAttributes(pNode)
                    }
                def attributesAddToInnerAttributes(pNode) { // Add each node as an attribute "inside" the root node
                        d('ADD EACH NODE')
                        // Remove all attributes from the root node
                            pNode.parent.attributes.clear()
                        // Totest Bug20160329122350
                            pNode.children.each {
                                if (it.text != PICKLIST_TEXT) { // If the child of ATTRIBUTES_TEXT is not the picklist
                                    def attributeValueNode = it.children[0]
                                    // FR20160331111321 Maybe this code for the comma-separated list should be in a function for the commaseparated list functions, and called here by passing the node and setting the context
                                    // Set the comma-separated attribute values if not set yet
                                        // Check if the child of the attribute value is COMMA_SEPARATED_LIST_TEXT
                                            if (!attributeValueNode.children.empty) {
                                                if (attributeValueNode.children[0].text == COMMA_SEPARATED_LIST_TEXT) {
                                                    setContext(attributeValueNode.children[0])
                                                    def commaSeparatedListValue = ''
                                                    // Loop the comma-separated list attribute values
                                                        attributeValueNode.children[0].children.sort{it.text.toLowerCase()}.each { // We cannot use .sort(comparable) because the children node is not a Comparable it seems
                                                            if (it.text != PICKLIST_TEXT)
                                                                commaSeparatedListValue += it.text + ', '
                                                            }
                                                    // Remove trailing comma
                                                        commaSeparatedListValue = commaSeparatedListValue.replaceAll(', $', '');
                                                    // Set the comma-separated list
                                                        attributeValueNode.text = commaSeparatedListValue
                                                    }
                                                }
                                    // Add the attribute back to the node
                                        def attributeName = it.text
                                        def attributeValue = attributeValueNode.text
                                        pNode.parent.attributes.add([attributeName, attributeValue])
                                        d(attributeName + ' ' + attributeValue)
                                    }
                                }
                        // Sort again the attributes once added to the node, in case there were new attributes
                            node = sortAttributes(node)
                    }
            // ATTRIBUTES_PICKLIST_VALUE
                def attributesPickListValueActivate() {
                    // Check the current node
                        node.icons.clear()
                        node.icons.addIcon('checked')
                    }
                def attributesPickListValueDeactivate() {
                    // Uncheck the current node
                        node.icons.clear()
                        node.icons.addIcon('unchecked')
                    }
            // VALUE
                def valueActivate() { // Gets all the possible values for that attribute in the map and shows them uniquely and sorted in the PICKLIST_TEXT
                    pickListNode = node.createChild()
                    pickListNode.text = PICKLIST_TEXT
                    def attributeValues = []
                    // Add the current attribute value to the list, because it may be a new value that the user just added so it should also be present in the list
                        // Bug20160404235643 
                        attributeValues.add(node.text.toString().trim())
                    // Add values to the PICKLIST
                        def attributeNameToSearch = parent.text
                        // Loop all nodes in the map
                            c.findAllDepthFirst().each { n ->
                                // Loop the children of the current node
                                    n.children.each {
                                        // If the node has attributes
                                            if (!it.attributes.empty) {
                                                // Loop the attributes and check if it contains the attribute searched for, if yes then get its value
                                                    it.attributes.names.eachWithIndex { attributeName, attributeIndex ->
                                                        if (attributeName == attributeNameToSearch)
                                                            attributeValues.add(it.attributes.get(attributeIndex).toString().trim())
                                                        }
                                                        attributeValues = attributeValues.unique() // Reduce the list to take less memory
                                                    }
                                        }
                                }
                        // Show the attributes collected as new nodes
                            attributeValues.sort(comparator).unique().each { 
                                if (it != '') {
                                    newValueNode = pickListNode.createChild()
                                    newValueNode.text = it
                                    }
                                }
                        // Check the value in the picklist that correspond to the current value and set the other as unchecked
                            node.children[lastChildIndex].children.each { // Loop the PICKLIST values
                                    it.icons.clear()
                                    if (it.text.toString().trim() == text.toString().trim())
                                        it.icons.addIcon('checked')
                                    else
                                        it.icons.addIcon('unchecked')
                                }
                        }
                def valueDeactivate(pNode) { // Get the first checked value in the picklist opened and set it as the value and close the picklist
                    // Delete attribute value: Set to blank the attribute's value everywhere in the map if they are not anymore in the picklist
                        // FR20160401230009 
                        c.findAllDepthFirst().each { n ->
                           // If the node has attributes
                               if (!n.attributes.empty) { 
                                    // Loop each attributes in the current node of the map
                                        n.attributes.names.eachWithIndex { attributeName, attributeIndex ->
                                            attributeValue = n.attributes.get(attributeIndex)
                                            // If the inner attribute is equal to the current node attribute
                                                if (attributeName == parent.text) {
                                                    // Loop the picklist and check if the value is there, if not then set it to blank 
                                                        def found = false
                                                        pNode.children[lastChildIndex].children.each {
                                                            if (it.text == attributeValue)
                                                                    found = true
                                                            }
                                                        // If the attribute value is not found in the picklist then set it to blank
                                                            if (!found)
                                                                n[attributeName] = '' 
                                                    }
                                           }
                                }
                            }
                    // Remove the PICKLIST
                        pNode.children[0].delete()
                    }
            // PICKLIST_VALUE
                def pickListValueActivate() { 
                    // Put unchecked icons to all values (this way of clearing all here avoids multiple selection when not COMMA_SEPARATED_LIST
                        parent.children.each {
                                it.icons.clear()
                                it.icons.addIcon('unchecked')
                            }
                    // Check the current node
                        node.icons.clear()
                        node.icons.addIcon('checked')
                    // Set the value of the attribute
                        parent.parent.text = node.text.trim()
                    }
            // VALUE_COMMA_SEPARATED
                def valueCommaSeparatedActivate() { // Split the comma-separated list into child nodes of the COMMA_SEPARATED_LIST_TEXT node
                    commaSeparatedListNode = node.createChild()
                    commaSeparatedListNode.text = COMMA_SEPARATED_LIST_TEXT
                    commaSeparatedListNode.icons.addIcon(LIST_ICON)
                    // Split to child nodes (as items of the list)
                        commaSeparatedListValues = node.text.tokenize(',')*.trim().sort(comparator).unique() // Items must be trimmed before to be sorted or the sort will be broken
                        commaSeparatedListValues.each {
                            listItemNode = commaSeparatedListNode.createChild()
                            listItemNode.text = it
                            }
                    }
                def valueCommaSeparatedDeactivate() {
                        // Build the comma-separated list from the nodes
                            commaSeparatedListValue = ''
                            children[0].children.sort{it.text.toLowerCase()}.each { // We cannot use .sort(comparable) because the children node is not a Comparable it seems
                                if (it.text != PICKLIST_TEXT)
                                    commaSeparatedListValue += it.text + ', '
                                }
                            // Remove trailing comma
                                commaSeparatedListValue = commaSeparatedListValue.replaceAll(', $', '');
                        // Set the comma-separated list
                            node.text = commaSeparatedListValue
                        // Delete the COMMA_SEPARATED_LIST_TEXT node
                            children[0].delete()
                    }
            // COMMA_SEPARATED_LIST 
                def commaSeparatedListActivate() {
                    pickListNode = node.createChild()
                    lastChildIndex++ // It has to be incremented because we add a node 
                    pickListNode.text = PICKLIST_TEXT
                    def attributeValues = []
                    // Initialize the list of attributeValues for the picklist with at least the values from the comma-separated list
                        attributeValues = parent.text.tokenize(',')*.trim()
                    // Add values to the PICKLIST
                        def attributeNameToSearch = parent.parent.text
                        // Loop all nodes in the map
                            c.findAllDepthFirst().each { n ->
                                // Loop the children of the current node
                                    n.children.each {
                                        // If the node has attributes
                                            if (!it.attributes.empty) {
                                                // Loop the attributes and check if it contains the attribute searched for, if yes then get its value
                                                    it.attributes.names.eachWithIndex { attributeName, attributeIndex ->
                                                        if (attributeName == attributeNameToSearch) {
                                                            // Here split the attributes and add them
                                                                commaSeparatedSplittedValues = it.attributes.get(attributeIndex).tokenize(',')*.trim().sort(comparator).unique() // Items must be trimmed before to be sorted or the sort will be broken
                                                            // Add each of the splitted values individually
                                                                commaSeparatedSplittedValues.each {
                                                                    attributeValues.add(it.toString())
                                                                    }
                                                            }
                                                            attributeValues = attributeValues.unique() // Reduce the list to take less memory
                                                        }
                                                }
                                        }
                                }
                        // Show the attributes collected as new nodes
                            attributeValues.sort(comparator).unique().each {
                                newValueNode = pickListNode.createChild()
                                newValueNode.text = it
                                }
                        // Check the values in the picklist that correspond to the values in the comma separated list and set the other as unchecked
                            node.children[lastChildIndex].children.each { // Loop the PICKLIST values
                                    pickListNode = it
                                    pickListNode.icons.clear()
                                    pickListNode.icons.addIcon('unchecked')
                                    // Loop the comma-separated nodes and see if the current picklist value is there, if yes then check it it in the picklist value
                                        node.children.each {
                                            if (it.text != PICKLIST_TEXT) {
                                                if (pickListNode.text.toString().trim() == it.text.toString().trim()) { // If the picklist value is equal to the comma-separated value 
                                                        pickListNode.icons.clear()
                                                        pickListNode.icons.addIcon('checked')
                                                    }
                                                }
                                            }
                                }
                    }
                def commaSeparatedListDeactivate() { // Delete the PICKLIST
                    // Delete comma-separated picklist values from the map
                        // FR20160405103753 
//                        // Loop the attributes in the map
//                            c.findAllDepthFirst().each { n ->
//                            // If the nodes has attributes
//                               if (!n.attributes.empty) { 
//                                // Loop each attributes in the current node of the map
//                                    n.attributes.names.eachWithIndex { attributeName, attributeIndex ->
//                                        attributeValue = n.attributes.get(attributeIndex)
//                                        // If attribute equals to current attribute 
//                                            if (attributeName == parent.parent.text) {
//                                            // Split the comma-separated into values
//                                                commaSeparatedSplittedValues = attributeValue.tokenize(',')*.trim()
//                                                // For each splitted value
//                                                    commaSeparatedSplittedValues.each {
//                                                            splittedValue = it
//                                                            def found = false
//                                                            // Check if it is in the picklist
//                                                                node.children[node.children.size() - 1].children.each {
//                                                                    d('compare: ' + splittedValue + ' == ' + it.text)
//                                                                    if (splittedValue == it.text) {
//                                                                        d('found: ' + splittedValue)
//                                                                        found = true
//                                                                        }
//                                                                    }
//                                                            // If the value is not in the picklist 
//                                                                if (!found) {
//                                                                    d('not found: ' + splittedValue)
//                                                                    // Replace it with nothing in the comma-separated value
//                                                                        //n[attributeName] = n[attributeName].replace(splittedValue, '')
//                                                                    // Replace it also in the comma-separated value
//                                                                        // parent.text = parent.text.replace(splittedValue + ', ', '')
//                                                                        // parent.text = parent.text.replace(', ' + splittedValue, '')
//                                                                        //parent.text = parent.text.replace(splittedValue, '')
//                                                                    }
//                                                        }
//                                               }
//                                       }
//                                   }
//                                }
//
                           
                    if (lastChildText == PICKLIST_TEXT) {
                        node.children[lastChildIndex].delete()
                        lastChildIndex-- // It has to be decremented because we remove a node (but in practice it has no effect)
                        }
                    }
            // COMMA_SEPARATED_LIST_PICKLIST_VALUE 
                def commaSeparatedListPickListValueActivate() {
                        // Check the current node
                            node.icons.clear()
                            node.icons.addIcon('checked')
                        // Build the COMMA_SEPARATED_LIST value from the PICKLIST checked values
                            commaSeparatedListPickListValueReloadList()
                    }
                def commaSeparatedListPickListValueDeactivate() {
                        // Uncheck the current node
                            node.icons.clear()
                            node.icons.addIcon('unchecked')
                        // Build the COMMA_SEPARATED_LIST value from the PICKLIST checked values
                            commaSeparatedListPickListValueReloadList()
                    }
                def commaSeparatedListPickListValueReloadList() { // Build the COMMA_SEPARATED_LIST value from the PICKLIST checked values
                            commaSeparatedListValue = ''
                            // Remove all comma-separated values as node
                                parent.parent.children.each {
                                    if (it.text != PICKLIST_TEXT)
                                        it.delete()
                                    }
                                lastChildIndex = 0

                            parent.children.sort{it.text.toLowerCase()}.each {
                                if (it.icons[0] == 'checked') {
                                    // Append the value as a node
                                        newValueNode = parent.parent.createChild()
                                        newValueNode.text = it.text.trim()
                                        lastChildIndex++
                                        // Move the node created
                                            appendIndex = lastChildIndex - 1 // -1 because it is added before the picklist
                                            newValueNode.moveTo(node.parent.parent, appendIndex) // Append the value
                                    // Build the comma-separated list
                                        commaSeparatedListValue += it.text.trim() + ', '
                                    }
                                }
                             // Remove trailing comma
                                 commaSeparatedListValue = commaSeparatedListValue.replaceAll(', $', '');
                        // Set the comma-separated node value to the value built above
                            parent.parent.parent.text = commaSeparatedListValue
                    }
    /// Main
        initialization()
        // Do actions according to the type and state
            // NODE
                if (type == NODE && state == DEACTIVATED)
                    nodeActivate() // Show the attributes and their values as nodes, if attributes values are comma-separated list they are expanded as a COMMA_SEPARATED_LIST_TEXT branch
                else if (type == NODE && state == ACTIVATED)
                    nodeDeactivate() // Hide the attributes as nodes and set the inner attributes to the values set in the nodes
                // ATTRIBUTES
                    else if (type == ATTRIBUTES && state == ACTIVATED)
                        attributesDeactivate(node)
                    else if (type == ATTRIBUTES && state == DEACTIVATED)
                        attributesActivate()
                    // ATTRIBUTES_PICKLIST (NO ACTION)
                        // ATTRIBUTES_PICKLIST_VALUE
                            else if (type == ATTRIBUTES_PICKLIST_VALUE && state == ACTIVATED)
                                attributesPickListValueDeactivate()
                            else if (type == ATTRIBUTES_PICKLIST_VALUE && state == DEACTIVATED)
                                attributesPickListValueActivate()
                    // ATTRIBUTE (NO ACTION)
                        // VALUE
                            else if (type == VALUE && state == DEACTIVATED)
                                valueActivate() // Get all the possible values of that attribute in the map, check all the other nodes and their values and get a unique list
                            else if (type == VALUE && state == ACTIVATED)
                                valueDeactivate(node) // Get the first checked value in the picklist opened and set it as the value and close the picklist
                            // PICKLIST (NO ACTION)
                                // PICKLIST_VALUE (NO DEACTIVATE because one value has to be checked)
                                    else if (type == PICKLIST_VALUE && state == DEACTIVATED)
                                        pickListValueActivate()
                        // VALUE_COMMA_SEPARATED
                            else if (type == VALUE_COMMA_SEPARATED && state == ACTIVATED)
                                valueCommaSeparatedDeactivate()
                            else if (type == VALUE_COMMA_SEPARATED && state == DEACTIVATED)
                                valueCommaSeparatedActivate()
                            // COMMA_SEPARATED_LIST
                                else if (type == COMMA_SEPARATED_LIST && state == ACTIVATED)
                                    commaSeparatedListDeactivate()
                                else if (type == COMMA_SEPARATED_LIST && state == DEACTIVATED)
                                    commaSeparatedListActivate()
                                // COMMA_SEPARATED_LIST_VALUE (NO ACTION)
                                // COMMA_SEPARATED_LIST_PICKLIST (NO ACTION)
                                    // COMMA_SEPARATED_LIST_PICKLIST_VALUE
                                        else if (type == COMMA_SEPARATED_LIST_PICKLIST_VALUE && state == ACTIVATED)
                                            commaSeparatedListPickListValueDeactivate()
                                        else if (type == COMMA_SEPARATED_LIST_PICKLIST_VALUE && state == DEACTIVATED)
                                            commaSeparatedListPickListValueActivate()
