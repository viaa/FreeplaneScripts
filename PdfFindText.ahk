; ####################################################################################################
; # PDF-XChange Viewer
; #################################################################################################### 

    #IfWinActive ahk_class DSUI:PDFXCViewer

        ; ====================================================================================================
        ; = Highligh and copy selected text and path to the file and copy that in freeplane in a new node
        ; ==================================================================================================== 
            #w::
                ; To search pdf text from freeplane, press #w
                ; NOTE: F5, F6, F7 where pre-assign to these actions, I should right click the toolbar and customize the toolbar, there it is possible to assign shortcuts to any action. It is more easy this way to activate things than to use menus.
                    ; Pdf-Xchange Viewer Configs
                        ; "C:\Users\Acer\AppData\Roaming\Freeplane\1.8.x\scripts\PdfFindTextConfig1.png"
                        ; "C:\Users\Acer\AppData\Roaming\Freeplane\1.8.x\scripts\PdfFindTextConfig2.png"
                        ; "C:\Users\Acer\AppData\Roaming\Freeplane\1.8.x\scripts\PdfFindTextConfig3.png"
                ; Copy the file name
                    Send !{F5}
                    fileName = %Clipboard%
                ; Copy the select text
                    Send ^c
                    text = %Clipboard%
                ; Put the text and the filename together in the clipboard
                    clipboard = %text%`r`n%filename%
                ; Highlight the selected text
                    Send !{F6}
                ; Set back the tool to the select tool
                    Send !{F7}
                ; Save the pdf (to keep the highlighting)
                    Send ^s
                ; Activate freeplane window
                    WinActivate, ahk_class SunAwtFrame
                ; Run the freeplane script to create the node ("C:\Users\aviau\AppData\Roaming\Freeplane\1.3.x\scripts\PdfFindText.groovy")
                    ; !F6 is assigned to run the script in Freeplane
                    Send !{F6}
                    ; Save the map in freeplane
                        Send ^s
                return

    #IfWinActive

; ####################################################################################################
; # Freeplane
; #################################################################################################### 

    #IfWinActive ahk_class SunAwtFrame

        ; ====================================================================================================
        ; = Search in PDF viewer
        ; ==================================================================================================== 
            #w:: ; Search the current node text in the linked pdf
                ; To create a link in freeplane, press #w in Pdf-XChange viewer
                ; Copy text in current node
                    Send ^+c
                        Sleep 100
                ; Open the pdf from the link
                    Send ^{Enter}
                    Sleep 400
                ; Search the pdf with the text copied
                    ; First remove the link from the copied text, it is added by freeplane
                        Clipboard := RegExReplace(Clipboard, " <file:.*", "") 
                            Sleep 100
                    ; Remove also the 'Pdf: ' string I added to indicate it is a link to a pdf
                        Clipboard := RegExReplace(Clipboard, "^Pdf: ", "") 
                            Sleep 100
                    WinActivate ahk_class DSUI:PDFXCViewer
                    Send ^+f
                    Send ^v
                    Send {Enter}
                return

    #IfWinActive
