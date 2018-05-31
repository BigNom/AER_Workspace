Sub main
    Dim startPoint As MbePoint
    Dim point As MbePoint, point2 As MbePoint

'   Start a command
    MbeSendCommand "DIALOG PLOT "

    MbeSendCommand "PRINT PICKWINPLTR <MENU>"

    MbeSendCommand "PRINT PICKWINPLTR "


'   When a command brings up a modal dialog,
'   a later statement must close the dialog,
'   or the MbeState.modalDialogByUser property
'   should be set to 1 so that the user must close
'   the dialog when the macro is executed.
'   Also, you may not use the debugger "Step"
'   commands while a modal dialog is displayed.

'   Opened modal dialog "Select Printer Driver Configuration File"

    MbeSendCommand "MDL COMMAND MGDSHOOK,fileList_setDirectoryCmd N:\14_EngineeringServices\Drafting\Admin\Bentley\ClientBuilds\AER_Workspace\Standards\pltcfg\"

    MbeSendCommand "MDL COMMAND MGDSHOOK,fileList_setFileNameCmd AER_A3.pltcfg"

'   Closed modal dialog "Select Printer Driver Configuration File"

'   Following comment is the command to close a modal dialog
'   MbeSendCommand "MBE1 CLOSEMODAL OK"

    MbeSendCommand "PRINT PRINTERNAME "

    MbeSendCommand "PRINT MAXIMIZE "

    MbeSendCommand "PRINT EXECUTE "
End Sub
