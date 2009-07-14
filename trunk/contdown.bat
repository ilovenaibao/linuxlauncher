@echo off
title Linux Launcher 1.0.3 BETA - Opciones - Continuar descargas
:menu
cls
echo Selecciona la distribucion que quieres continuar descargando.
echo.
echo.
echo      1) BackTrack 3 Final
echo      2) Damm Small Linux
echo      3) NimbleX
echo      4) Kubuntu
echo      5) Puppy Linux
echo      6) SliTaz
echo      7) GeeXboX
echo      8) Volver
echo.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto bt
if "%_ok%" == "2" goto dsl
if "%_ok%" == "3" goto nx
if "%_ok%" == "4" goto k
if "%_ok%" == "5" goto pl
if "%_ok%" == "6" goto st
if "%_ok%" == "6" goto gx
if "%_ok%" == "8" option.bat
goto menu
:bt
set _iso=http://cesium.di.uminho.pt/pub/backtrack/bt3-final.iso
goto _start
:dsl
set _iso=ftp://ibiblio.org/pub/Linux/distributions/damnsmall/current/dsl-4.4.10-initrd.iso
goto _start
:nx
set _iso=http://nimblex.artjunkie.org/NimbleX-2008.iso
goto _start
:k
set _iso=ftp://ftp.rediris.es/sites/releases.ubuntu.com/releases/kubuntu/jaunty/kubuntu-9.04-desktop-i386.iso
goto _start
:pl
set _iso=ftp://ibiblio.org/pub/linux/distributions/puppylinux/puppy-4.2.1-k2.6.25.16-seamonkey.iso
goto _start
:st
set _iso=http://mirror.switch.ch/ftp/mirror/slitaz/iso/2.0/slitaz-2.0.iso
goto _start
:gx
set _iso=http://www1.geexbox.org/releases/1.2.2/geexbox-1.2.2-en.i386.glibc.iso
goto _start
:start
cls
echo Espera mientras se descarga o cierra la ventana para cancelar.
.\wget\wget %_iso% -c
cls
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
option.bat
