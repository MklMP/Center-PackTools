@echo off
title Geolocalizator-MaykelMillan
color 5

echo            Bienvenido a Geolocalizator
echo Si tu cliente no tiene permisos para usar esta API deberas usar VPN
echo.
echo Al final se ejecutara automaticamente GoogleMaps con la ubicacion de la IP
echo.

set /p ip="Enter IP >> "

rem Validar la IP
if "%ip%"=="" (
    color 4
    echo Error: No se ingresó ninguna IP.
    echo Thanks for use - App By MklMillan
    pause
    exit /b
)

rem Ejecutar la consulta a la API y redirigir la salida a un archivo temporal
curl -s https://ipinfo.io/%ip% > temp.txt 2>nul

rem Comprobar el código de error de curl
set "errorcode=%errorlevel%"

if %errorcode% neq 0 (
    if %errorcode% equ 6 (
        color 4
        echo Establece primero una conexión a Internet. Error de curl: No se puede resolver el nombre de host.
    ) else (
        color 4
        echo Ocurrió un error con la solicitud. Error de curl: %errorcode%
    )
    echo Thanks for use - App By MklMillan
    pause
    exit /b
)

rem Extraer las coordenadas y otra información del archivo JSON
for /f "tokens=1,2 delims=:" %%a in ('findstr /i "loc" temp.txt') do (
    set "loc=%%b"
)

rem Limpiar la variable loc para obtener solo las coordenadas
set "loc=%loc: =%"
set "loc=%loc:"=%"
set "loc=%loc:,=,%"

rem Dividir la cadena loc en latitud y longitud
for /f "tokens=1,2 delims=," %%i in ("%loc%") do (
    set "latitude=%%i"
    set "longitude=%%j"
)

rem Verificar si las coordenadas fueron extraídas correctamente
if "%latitude%"=="" (
    color 4
    echo Error al extraer la latitud.
    echo Thanks for use - App By MklMillan
    pause
    exit /b
)

if "%longitude%"=="" (
    color 4
    echo Error al extraer la longitud.
    echo Thanks for use - App By MklMillan
    pause
    exit /b
)

rem Construir el enlace de Google Maps
set "mapsUrl=https://www.google.com/maps?q=%latitude%,%longitude%"

rem Mostrar la información y el enlace de Google Maps
color a
echo Esta es toda la información:
echo.
type temp.txt
echo.
echo Abriendo la ubicación en Google Maps...
start "" %mapsUrl%

rem Limpiar el archivo temporal
del temp.txt

pause
exit
