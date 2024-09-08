@echo off


color a
echo Creando WordLIST
echo ################
echo.


set /p cred="Archivo 'Credenciales' >> "
if not exist %cred% (
  echo ESTE ARCHIVO NO EXISTE
  pause
  exit
)

findstr /R /C:"Password: .+" "%cred%" > WORDLIST_READY.txt

echo Wordlist Creada con Exito en WORDLIST_READY.txt
pause
exit

