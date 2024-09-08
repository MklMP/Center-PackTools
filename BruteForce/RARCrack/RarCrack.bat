@echo off
setlocal enabledelayedexpansion

color 9
echo ########################################################################################################
echo # Si se logra encontrar la Password se extraeran correctamente los archivos en la carpeta "Extraction" #
echo ########################################################################################################
echo.

set /p passlist="Introduce la WordList >> "
if not exist %passlist% (
   echo La ruta Ingresada no existe
   pause 
   exit
)

set /p cifrado="Introduce el archivo cifrado >> "
if not exist %cifrado% (
   echo La ruta Ingresada no existe
   pause
   exit
)
set /a count=0


if not exist Extraction mkdir Extraction

for /f %%a in (%passlist%) do (
   color 6
   "C:\Program Files\WinRAR\WinRAR.exe" x -y -p"%%a" "%cifrado%" "Extraction" >nul 2>&1
   set /a count+=1
   echo [INTENTO: #!count!]---[%%a]
) 


color a
pause
endlocal







