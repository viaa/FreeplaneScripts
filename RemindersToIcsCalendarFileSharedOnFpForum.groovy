// @ExecutionModes({on_single_node})

// This is the RemindersToIcsCalendarFile.groovy but adapted to be shared on FreeplaneForums (without personal stuff).
// You need to set the TIMEZONE and TMP_PATH variables, and also add the maps you would like to create reminder from (near line 114). 

// ####################################################################################################
// # Imports
// #################################################################################################### 
    import javax.swing.*

// ####################################################################################################
// # Declarations
// #################################################################################################### 
    def TIMEZONE = 'Europe/Paris' // The timezone should be set to the same in Google Calendar.
    def EOL = '\r\n'
    def TMP_PATH = "c:\\Temp"

// ####################################################################################################
// # Functions
// #################################################################################################### 

    // ====================================================================================================
    def m(message) {  // =
    // ==================================================================================================== 
        JOptionPane.showMessageDialog(null, message);
    }

    // ====================================================================================================
    def getReminderDate(pNode, format = 'yyyy-MM-dd_HH.mm.ss', timezone = 'Europe/Paris') { // = Get the date of the reminder of the node
    // ==================================================================================================== 
        if (!pNode.reminder)
            return ''
        else { // Node has a reminder
            // Get the unix seconds from the reminder message
                def remDate = 'none'
                def zeroEpoch
                def ma = pNode.reminder =~ /\d+/
                def unixSeconds = ma[0] 

            // Convert the unix seconds
                zeroEpoch = Calendar.getInstance(TimeZone.getTimeZone(timezone))
                zeroEpoch.setTimeInMillis(unixSeconds as long)
                remDate = zeroEpoch.format(format)
            return remDate
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
        return text
    }

    // ====================================================================================================
    def getPath(pNode, shortTextMaxSize) { // = Gets the path of the current node
    // ==================================================================================================== 
        def pathAllNodes = ''
        pNode.pathToRoot.each { 
            if (it != pNode.pathToRoot.last()) // Don't show the node itself in the path because it is more hard to read
                pathAllNodes += '/' + truncateText(it.plainText, shortTextMaxSize, true, true) 
        }
        pathAllNodes = pathAllNodes.replaceAll('\\|', ':') // Replace the delimiter char in case there is one.
        return pathAllNodes 
    }

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
    def writeStringToFile(string, filePath, append_) { // =
    // ==================================================================================================== 
        def file = new File(filePath)
        if (append_)
            file.append(string, 'utf-8')
        else
            file.write(string, 'utf-8')
    }

// ####################################################################################################
// # Main
// #################################################################################################### 
    def cal = 'BEGIN:VCALENDAR' + EOL
    c.getOpenMaps().each { map -> //Go through all opened maps. Use c.mapLoader() to load .mm files from the disk. http://www.freeplane.org/doc/api/index.html?org/freeplane/plugin/script/proxy/Proxy.Loader.html
        if (
            // Put the maps you would like to create reminders from here. This is the name of the map as it appears in the tabs.
                map.name == 'MyMap1' || 
                map.name == 'MyMap2' || 
                map.name == 'MyMap3' || 
                map.name == 'MyMap4'
            ) {
            map.rootNode.findAll().each { n -> // Go through all the nodes of the current map.
                def remDate = getReminderDate(n, 'yyyyMMdd-HHmmss', TIMEZONE)
                if (remDate != '') { // Create an event only if there is a reminder.
                    cal += 'BEGIN:VEVENT' + EOL
                    cal += "UID:${map.name}" + n.id.replace('ID_', '') + EOL
                    def coreTextTmp = n.plainText.replaceAll('\\n', '\\\\') // EOL replacement is \\ because entries cannot be multiline.
                    cal += 'SUMMARY:' + truncateText(coreTextTmp, 75, true, false) + EOL
                    // AllDay: Even is all day or spans multiple day until a end date?
                        def allDay = false
                        if (n.attributes['AllDay'] != null)
                            if (n.attributes['AllDay'].toLowerCase() == 'true')
                                allDay = true
                    // DTSTART
                        remDate = remDate.replace('-', 'T') + 'Z'
                        if (allDay) // If the event is all day (or to span multiple days) then cut out the time.
                            remDate = remDate.take(8)
                        cal += "DTSTART;TZID=$TIMEZONE:" + remDate + EOL
                    // DTEND: End date (using an fp attribute). NOTE: On the end date, there will not be color, meaning that the event will not be on the end date. For example from 1st (start date) to 2nd (end date) will only colorize 1 square on the calendar and the event is ended on the 2nd. To see all these days colorized, AllDay should be set to True.
                        if (n.attributes['DTEND'] != null) {
                            String endDate = n.attributes['DTEND'] // I need to explicitely declare as a string or it raises an error. I think it is because the attribute value starts with a number as it is a date.
                            endDate = endDate.replaceAll('-', '') // For some reason I need to put .toString()
                            endDate = endDate.replaceAll('_', 'T') + '00Z'
                            if (allDay) // If the event is all day (or to span multiple days) then cut out the time.
                                endDate = endDate.take(8)
                            cal += "DTEND;TZID=$TIMEZONE:" + endDate + EOL
                        }
                    // RRULE
                        if (n.attributes['RRULE'] != null) {
                            def rRule = n.attributes['RRULE']
                            // If there is a end date to the repetition. On the day written in that date there will be an event in the calendar (inclusive).
                                if (rRule.contains('UNTIL')) {
                                    def m = rRule =~ /UNTIL=.*?(\d\d\d\d-\d\d-\d\d_\d\d-\d\d-\d\d)/
                                    def untilDateRaw = m[0][1]
                                    def untilDateFormatted = m[0][1].replace('_', 'T').replaceAll('-', '') + 'Z'
                                    rRule = rRule.replace(untilDateRaw, untilDateFormatted)
                                }
                            cal += 'RRULE:' + rRule + EOL
                        }
                    // Description
                        def description = coreTextTmp
                        description += '\\Path: ' + getPath(n, 200)
                        description += '\\FpLink: ' + getFreeplaneLink(n)
                        if (n.detailsText != null) {
                            def detailsTextTmp = htmlUtils.htmlToPlain(n.detailsText).replaceAll('\n', '\\\\') // EOL replacement is \\ because entries cannot be multiline.
                            description = "\\Details: $detailsTextTmp"
                        }
                        if (n.note != null) {
                            def noteTextTmp = htmlUtils.htmlToPlain(n.note.text).replaceAll('\n', '\\\\') // EOL replacement is \\ because entries cannot be multiline.
                            description = "\\Note: $noteTextTmp"
                        }
                        cal += "DESCRIPTION:$description" + EOL
                    cal += 'END:VEVENT' + EOL
                } // if (remDate != '')
            } // c.findAll().each { n ->
        } // if (map.name == ...
    } // c.getOpenMaps().each { map -> 
    cal += 'END:VCALENDAR' + EOL // Need to add the EOL because the file will be merged with others.
    def icsFilePath = "${TMP_PATH}\\FreeplaneReminders.ics"
    writeStringToFile(cal, icsFilePath, false)
    m("Freeplane reminders exported to '$icsFilePath'.") 
