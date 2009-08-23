@echo off
title Linux Launcher 1.0.5 BETA - Opciones - Administrar HDD
cls
if exist gparted-live-0.4.5-2.iso goto manage else
goto download
:download
echo Espera mientras se descarga las utilidades de Administracion del HDD...
echo.
.\wget\wget http://downloads.sourceforge.net/gparted/gparted-live-0.4.5-2.iso
if exist gparted-live-0.4.5-2.iso goto manage else (
goto download
)
:manage
cls
echo Ejecutando gParted...
start .\qemu\qemu -L .\qemu -kernel-kqemu -localtime -soundhw all -m 150 -hda hda.img -cdrom gparted-live-0.4.5-2.iso -boot d
option.bat