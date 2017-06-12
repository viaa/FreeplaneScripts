// @ExecutionModes({ON_SELECTED_NODE})

// Documentation
    // Script to display a calendar and to help to do calendar related operations
        // Could be used as a date picker, or to show days with reminders, or to add tasks or notes to days. 
        // Can be used also with the EditAttributeAsNodes script to add attributes to days. 

    // Tip: Do a vertical split view with 2 calendar map and on the left close all the notes added to calendar under +, and on the right open all these notes, then i have a view of all days on the left and on the right the details.

    // Todo:
        // When a month is moved to a node that is on the left side of the map root node, then the days are read from right to left... maybe do some function that switch a month from right to left to left to right, it should not be hard, just to loop all nodes in the month and use a temp node to keep values while switching. The only thing would be to add empty nodes at the bottom of the month if a day is a monday for example and there are no other days in the week, example 29th of february 2016.

// Version history
    // 2016-04-24_10.36.04
        // Modif: I removed the month number in the month label for months, it was confusing, like '5 May' could be misunderstood by the '5th of May'
    // 2016-04-24_10.25.07
        // Added: I added nodes with a + to the quarters and the year, so users can added their nodes with notes and task there related to the days of the months. 
    // 2016-04-24_03.16.48
        // Added: Add automatically 4 nodes for the 4 quarters of the year: Q1, Q2, Q3, Q4, this is useful to move the months around and to put them for example, Q1 and Q3 on the left and Q2 and Q4 on the right. For now I will do it manually.
        // Added: Maybe add the + by default so that users can attach tasks to them. 
        // Modif: I let the default fonts for the year, month name, quarters. Only the calendar days need to have a font with chars with the same width, so that the days are aligned.
    // 2016-04-23_11.31.58 
        // I added font style, so that if the Jonas Batista formatting style is not used, then the days would still be aligned. I added also spacing in the nodes for that.
    // 2016-04-23_10.40.53 
        // Initial version
        // This is a first version that only builds the calendars structure and formats it. Next is to add operations.

import static java.util.Calendar.*

FONT = 'Consolas'

MONTH_COLORS = [
    '#A3D9FF',
    '#CCFFFF',
    '#37D8D8',
    '#DBFFDB',
    '#9FD303',
    '#FFFF99',
    '#FFD303',
    '#FF9F03',
    '#FF6200',
    '#FF7D7D',
    '#CD98FF',
    '#CACAFF'
]

// Set the year
    def year = Integer.parseInt(javax.swing.JOptionPane.showInputDialog("Enter the year (Ex: 2016)"));
    //def year = 2016
    def yearText = year
    // Create the node for the year
        yearNode = node.createChild()
        yearNode.text = yearText
        yearNode.style.font.size = 20

// Loop all months, add them and their days
    Calendar.with {
        (JANUARY..DECEMBER).each { month ->
            // Set the calendar to the current year and month (current of the loop)
                def cal = instance
                cal.set(java.util.Calendar.YEAR, year)
                cal.set(java.util.Calendar.MONTH, month)
            // Set the quarter
                if (month <= 2)
                    quarter = 1
                else if (month <= 5)
                    quarter = 2
                else if (month <= 8)
                    quarter = 3
                else if (month <= 11)
                    quarter = 4
                // Add the node for the quarter
                if ((month + 3) % 3 == 0) { // Add the quarter only once each 3 months blocks begin
                    quarterNode = yearNode.createChild()
                    quarterNode.text = 'Q' + quarter
                    quarterNode.style.font.size = 16
                    // Set alternate light yellow/white clouds (no white clouds, just no cloud)
                        if ((quarter + 1) % 2 == 0) {
                            quarterNode.cloud.enabled = true
                            quarterNode.cloud.shape = 'ROUND_RECT' // either 'ARC', 'STAR', 'RECT' or 'ROUND_RECT'
                            quarterNode.cloud.colorCode = '#FFFFCC'
                            }
                    }
            // Add the month
                def monthText = ''
                monthName = cal.format('MMM')
                //monthText = month + 1 + ' ' + monthName
                monthText = monthName
                // Create the node for the month
                    monthNode = quarterNode.createChild()
                    monthNode.text = monthText
                    //monthNode.style.floating = true
                    //monthNameNode.style.font.bold = 0
                    //monthNameNode.style.setTextColorCode(nodeTextColor)
                    monthNode.style.setBackgroundColorCode(MONTH_COLORS[month])
                    monthNode.style.font.size = 20
                // Set text style
                    //monthNode.style.font.bold = true
                // Set the background color of the month name and number
                    monthNode.style.backgroundColorCode = MONTH_COLORS[month]
                // Set alternate color and white clouds to make it more easy to distinguish between months (no clouds for white just for odd month numbers in color)
                    if ((month + 1) % 2 == 1) {
                        monthNode.cloud.enabled = true
                        monthNode.cloud.shape = 'ROUND_RECT' // either 'ARC', 'STAR', 'RECT' or 'ROUND_RECT'
                        monthNode.cloud.colorCode = '#DEEAF6'
                        }
            // Get the number of days in the month
                int nbDaysInMonth = cal.getActualMaximum(java.util.Calendar.DAY_OF_MONTH);
            // Add the full name of the month
                //monthNameNode = monthNode.createChild()
                // Set the cloud and its color
                    //monthNameNode.cloud.enabled = true
                    //monthNameNode.cloud.shape = 'ROUND_RECT' // either 'ARC', 'STAR', 'RECT' or 'ROUND_RECT'
                    //monthNameNode.cloud.colorCode = MONTH_COLORS[month]
                    //monthFullName = cal.format('MMMMM')
                    //monthNameNode.text = monthFullName
                    //monthNameNode.style.font.bold = 0
                    //monthNameNode.style.setTextColorCode(nodeTextColor)
                    //monthNameNode.style.setBackgroundColorCode(MONTH_COLORS[month])
                    //monthNameNode.style.font.size = 20
            // Add the day names (these days background colors should have the same colors as the new default freeplane format nodes in order)
                dayNameNode = monthNode.createChild()
                    dayNameNode.text = 'Mon'
                    dayNameNode.style.font.setName(FONT)
                    dayNameNode.style.backgroundColorCode = '#009933' // Green
                    dayNameNode.style.textColorCode = '#EEEEEE' // Light gray
                dayNameNode = dayNameNode.createChild() 
                    dayNameNode.text = 'Tue'
                    dayNameNode.style.font.setName(FONT)
                    dayNameNode.style.backgroundColorCode = '#3333FF' // Blue
                    dayNameNode.style.textColorCode = '#EEEEEE' // Light gray
                dayNameNode = dayNameNode.createChild() 
                    dayNameNode.text = 'Wed'
                    dayNameNode.style.font.setName(FONT)
                    dayNameNode.style.backgroundColorCode = '#FF6600' // Orange
                dayNameNode = dayNameNode.createChild() 
                    dayNameNode.text = 'Thu'
                    dayNameNode.style.font.setName(FONT)
                    dayNameNode.style.backgroundColorCode = '#CC00CC' // Purple
                    dayNameNode.style.textColorCode = '#EEEEEE' // Light gray
                dayNameNode = dayNameNode.createChild() 
                    dayNameNode.text = 'Fri'
                    dayNameNode.style.font.setName(FONT)
                    dayNameNode.style.backgroundColorCode = '#FFBF00' // Yellow
                dayNameNode = dayNameNode.createChild() 
                    dayNameNode.text = 'Sat'
                    dayNameNode.style.font.setName(FONT)
                    dayNameNode.style.backgroundColorCode = '#00FF99' // Light green
                dayNameNode = dayNameNode.createChild() 
                    dayNameNode.text = 'Sun'
                    dayNameNode.style.font.setName(FONT)
                    dayNameNode.style.backgroundColorCode = '#0099FF' // Light blue
            // Add the weeks to the month
                // Create the node for the week
                    prevDayNode = monthNode
                    def weekNum = 1
                for (int day = 1; day <= nbDaysInMonth; day++) {
                    // Set the calendar to the current day of the month
                        cal.set(java.util.Calendar.DAY_OF_MONTH, day)
                        dayName = cal.format('EEE')
                        // Add a space to have the number more align
                            if (day < 10)
                                dayText = ' ' + day + ' '
                            else
                                dayText = ' ' + day
                    // Create empty nodes the first day on the month is not monday on the first week
                        if (day == 1) {
                            switch (dayName) {
                                case 'Mon':
                                    dayNum = 1
                                    break;
                                case 'Tue':
                                    dayNum = 2
                                    break;
                                case 'Wed':
                                    dayNum = 3
                                    break;
                                case 'Thu':
                                    dayNum = 4
                                    break;
                                case 'Fri':
                                    dayNum = 5
                                    break;
                                case 'Sat':
                                    dayNum = 6
                                    break;
                                case 'Sun':
                                    dayNum = 7
                                    break;
                                }
                            nbEmptyNodes = dayNum - 1
                            for (i = 0; i < nbEmptyNodes; i++) {
                                prevDayNode = prevDayNode.createChild()
                                prevDayNode.text = '---'
                                prevDayNode.style.font.setName(FONT)
                                }
                            }
                    // Add the day node
                        dayNode = prevDayNode.createChild()
                        dayNode.text = dayText
                        dayNode.style.font.setName(FONT)
                    // Create the node for the next week if it is sunday (don't create the node if is the last day of the month)
                        if (dayName == 'Sun' && day < nbDaysInMonth)
                            prevDayNode = monthNode
                    // If it is not sunday then save the current node to connect next day to it
                        else
                            prevDayNode = dayNode
                    }
            // Add a node with a + where the users can add nodes with tasks for the month and notes 
                tasksNode = monthNode.createChild()
                tasksNode.text = '+'
            // Add a node with a + where the users can add nodes with tasks for the quarter
                if ((month + 1) % 3 == 0) {
                    tasksNode = quarterNode.createChild()
                    tasksNode.text = '+'
                    }
            }
        }
// Add a node with a + where the users can add nodes with tasks for the year
    tasksNode = yearNode.createChild()
    tasksNode.text = '+'
