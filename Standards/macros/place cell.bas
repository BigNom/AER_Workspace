
Sub main
    Dim startPoint As MbePoint
    Dim point As MbePoint, point2 As MbePoint

'   Send a keyin that can be a command string
    MbeSendKeyin "task sendtaskchangedasync ""\Drawing"""

'   Start a command
    MbeSendCommand "PLACE CELL ICON "


'   Set a variable associated with a dialog box
    MbeSetAppVariable "", "tcb->activeCell", ""

    MbeSetAppVariable "", "tcb->activeCell", "REV"

    MbeSendCommand "PLACE CELL ICON "

'   Coordinates are in master units
    startPoint.x = 594.296222#
    startPoint.y = 320.668637#
    startPoint.z = 0.000000#

'   Send a data point to the current command
    point.x = startPoint.x
    point.y = startPoint.y
    point.z = startPoint.z
    MbeSendDataPoint point, 1%

'   Send a reset to the current command
    MbeSendReset
End Sub
