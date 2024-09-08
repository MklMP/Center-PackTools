@echo off
title Repair-USB by MaykelMillan
color 3


echo list disk > part.txt                                                          
diskpart /s part.txt
echo                                                                               USB-Repair
echo *****************************************************                      By Maykel Millan       
del part.txt


echo.
set /p option="Selecciona el disco para Reparar >>> "
color 6
echo select disk %option% > diskpart.txt
echo clean >> diskpart.txt
echo create partition primary >> diskpart.txt
echo active >> diskpart.txt
echo format fs=FAT32 quick >> diskpart.txt
echo assign letter=M >> diskpart.txt
echo exit >> diskpart.txt

diskpart /s diskpart.txt


color a
echo "Formateo Completado !!"

pause
exit



