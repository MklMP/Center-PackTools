@echo off

if not exist "Credenciales Guardadas" mkdir "Credenciales Guardadas"

Laz\LaZagne.exe all -oA -output "Credenciales Guardadas"
pause
exit 