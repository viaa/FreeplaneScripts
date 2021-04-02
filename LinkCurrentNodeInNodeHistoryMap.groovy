// @ExecutionModes({ON_SELECTED_NODE})

// ####################################################################################################
// # Functions
// #################################################################################################### 

    // ====================================================================================================
    def getMapPath(pNode) { // =
    // ==================================================================================================== 
        try {
            URI mapUri = pNode.map.file.absoluteFile.toURI();
            def mapPath = mapUri.toString()
            return mapPath
        } catch (all) {
            m('Please make sure the file is saved to disk before to run the script!')
            return
        }
    }

    // ====================================================================================================
    def getFreeplaneLink(pNode) { // =
    // ==================================================================================================== 
        def path = getMapPath(pNode).replace('file:', '')
        return 'file:' + path + '#' + pNode.id
    }

    // ====================================================================================================
    def getPath(pNode) { // = Gets the path of the current node
    // ==================================================================================================== 
        def pathAllNodes = ''
        pNode.pathToRoot.each { 
            if (it != pNode.pathToRoot.last()) // Don't show the node itself in the path because it is more hard to read
                pathAllNodes += '/' + it.plainText
        }
        pathAllNodes = pathAllNodes.replaceAll('\\|', ':') // Replace the delimiter char in case there is one.
        return pathAllNodes 
    }


// ####################################################################################################
// # Main
// #################################################################################################### 

    def HISTO_MAP_NAME = 'DailyLogs' // It is the name of the map we see in the tab.

    def histoMap = null
    c.getOpenMaps().each { map ->
        if (map.name == HISTO_MAP_NAME)
            histoMap = map
    }

    def newHistoItem = histoMap.rootNode.createChild()
    newHistoItem.text = node.text
    newHistoItem.link.text = getFreeplaneLink(node) // This is the link to the current node. 
    newHistoItem.note = getPath(node) // The full path of the node linked is added to as a note.
