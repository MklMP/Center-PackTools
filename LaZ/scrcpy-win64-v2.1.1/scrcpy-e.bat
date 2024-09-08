@echo off

echo Entendido, Vamos a Reiniciar el puerto 5555 para usar el protocolo TCPIP
echo.
echo Puedes encontrar la Ip que necesitamos en Las Propiedades del dispositivo conectado!!
echo.

set /p ip = "Introduce el Ip de tu Movil: "

adb tcpip 5555
adb connect %ip%:5555

scrcpy -e

pause
exit