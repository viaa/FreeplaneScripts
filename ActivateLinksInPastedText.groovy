// @ExecutionModes({ON_SELECTED_NODE, ON_SELECTED_NODE_RECURSIVELY})

// Documentation 
    // This script takes the link that included in the text of the node and puts it as the link of the node, so that this link as text become enabled.
    // It allows to paste nodes with links as text then to make these links usable.
    // For example pasting this in a new map and running the script on the root node (recursively) will make the links active (remove the comments slashes before to copy and paste):
        // WindowsDir <file:/c:/windows>
        //      System32 <file:/C:/windows/System32>

    // Versions history
        // 2016-04-19_11.28.18
            // Fixed: If there was no link then there was an error, this is fixed.
        // 2016-04-19_23.15.01 
            // Initial version

def m(message) {
    javax.swing.JOptionPane.showMessageDialog(null, message); 
}

// Return the matches
    def matcher = (node.text =~ /<(file:.*)>/)

// If there is no link in the node of the text then do nothing or the error on [0] will stop the recursivity of the script)
    if (matcher) {
        def (fullMatch, pathOnly) = matcher[0]

        // Put the link in the link attribute and remove it from the text
            node.link.text = pathOnly
            node.text = node.text.replace(fullMatch, '')
    }
