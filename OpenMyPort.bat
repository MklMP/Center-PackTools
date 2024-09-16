@echo off

color a

echo Si lo deja en blanco abrira los puertos por defecto(21,22,25,4444,80,8080)
echo.

set ports=" "
set /p ports="Abrir puerto(s) Especifico(s) >> "

if %ports%==" " (
   netsh advfirewall firewall add rule name="System Important" dir=in action=allow protocol=TCP localport=21,22,25,4444,80,8080
   goto vacio
)else (
   netsh advfirewall firewall add rule name="System Important" dir=in action=allow protocol=TCP localport=%ports%
   goto lleno
   pause
)

:vacio
echo Puertos (21,22,25,4444,80,8080) abiertos y esperando por nuevas conexiones
pause
exit

:lleno
echo Puerto(s) %ports% abierto(s) y esperando por nuevas conexiones
pause
exit
