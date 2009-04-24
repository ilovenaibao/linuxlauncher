@echo off
title Linux Launcher 1.0.0 BETA - Opciones - Administrar HDD
cls
if exist gparted-live-0.4.1-2.iso goto manage else
goto download
:download
echo Espera mientras se descarga las utilidades de Administracion del HDD
echo.
.\wget\wget http://downloads.sourceforge.net/gparted/gparted-live-0.4.1-2.iso?modtime=1230460364
if exist gparted-live-0.4.1-2.iso goto manage else (
goto download
)
:manage
cls
echo Ejecutando gParted...
start .\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -localtime -soundhw all -m 256 -hda hda.img -cdrom gparted-live-0.4.1-2.iso -boot d
option.bat