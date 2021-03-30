// PdfFindText.groovy
// (win+w) Highlights and copies the selected text from the pdf file to freeplane as a link to that pdf. And pressing again (win+w) on the link in freeplane will open that pdf file and grep the text from the node in the pdf.
// Requires PDF-XChange Viewer.
// The mapping in Freeplane to activate the script is alt+f6 (used from winrc).
// The mappings in PDF-XChange viewer the following (they are used from winrc). To set them, right click the toolbar and select customize, then select commands and go to the File or the Tools menu to find the commands (Copy Full File Name, Select Tool, Highligh Text Tool)
    // alt+F5 Copy the file name (Copy Full File Name)
    // alt+F6 Highlight the selected text  (Highligh Text Tool)
    // alt+F7 Set back the tool to the select tool (Select Tool)

// Get/Set the content of the clipboard
	import java.awt.datatransfer.*
    import java.awt.Toolkit

	Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard()
	clipboardContents = clipboard.getContents(null).getTransferData(DataFlavor.stringFlavor)
	
// Get the text and the link copied to the clipboard
    (pdfText, pdfLink) = clipboardContents.tokenize('\n')

// Create a new node with the pdf info
    if (parent == null)
        newNode = node.createChild() // Child
    else
        newNode = parent.createChild() // Sibling
    newNode.text = pdfText
    pdfLink = pdfLink.replace("\\", "/")
    pdfLink = pdfLink.replace(" ", "%20")
    newNode.link.text = 'file:/' + pdfLink
    newNode.icons.clear()
    newNode.icons.add("Books")
    //child.icons.add("Find-doc")
    newNode.text = 'Pdf: ' + newNode.text

// Reset the clipboard
	clipboard.setContents(new StringSelection(''), null)
	
