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
    newHistoItem.link.text = getFreeplaneLink(node)
    newHistoItem.detailsText = node.detailsText
    newHistoItem.note = node.note
