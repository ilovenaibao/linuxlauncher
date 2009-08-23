@echo off
title Linux Launcher 1.0.5 BETA - Opciones - Administrar distribuciones Linux
cls
:menu
cls
echo Selecciona la distribucion que quieres administrar:
echo.
echo.
echo      1) 2/OS
echo      2) BackTrack 3
echo      3) Damm Small Linux
echo      4) GeeXboX
echo      5) Kubuntu
echo      6) NimbleX
echo      7) Puppy Linux
echo      8) SliTaz
echo      9) Super Ubuntu
echo      10) Haiku OS
echo      0) Volver
echo.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto 2os
if "%_ok%" == "2" goto bt
if "%_ok%" == "3" goto dsl
if "%_ok%" == "4" goto gx
if "%_ok%" == "5" goto k
if "%_ok%" == "6" goto nx
if "%_ok%" == "7" goto pl
if "%_ok%" == "8" goto st
if "%_ok%" == "9" goto su
if "%_ok%" == "10" goto hos
if "%_ok%" == "0" option.bat
goto menu
:2os
set _distro=2/OS
set _iso=2os400.img
set _download=http://downloads.sourceforge.net/project/meos/binarys/4.00/2os400.img
goto _start
:bt
set _distro=BackTrack 3
set _iso=bt3-final.iso
set _download=http://cesium.di.uminho.pt/pub/backtrack/bt3-final.iso
goto _start
:dsl
set _distro=Damm Small Linux
set _iso=dsl-4.4.10-initrd.iso
set _download=ftp://ibiblio.org/pub/Linux/distributions/damnsmall/current/dsl-4.4.10-initrd.iso
goto _start
:gx
set _distro=GeeXboX
set _iso=geexbox-1.2.3-en.i386.glibc.iso
set _download=http://www1.geexbox.org/releases/1.2.3/geexbox-1.2.3-en.i386.glibc.iso
goto _start
:k
set _distro=Kubuntu
set _iso=kubuntu-9.04-desktop-i386.iso
set _download=ftp://ftp.rediris.es/sites/releases.ubuntu.com/releases/kubuntu/jaunty/kubuntu-9.04-desktop-i386.iso
goto _start
:nx
set _distro=NimbleX
set _iso=NimbleX-2008.iso
set _download=http://nimblex.artjunkie.org/NimbleX-2008.iso
goto _start
:pl
set _distro=Puppy Linux
set _iso=puppy-4.2.1-k2.6.25.16-seamonkey.iso
set _download=ftp://ibiblio.org/pub/linux/distributions/puppylinux/puppy-4.2.1-k2.6.25.16-seamonkey.iso
goto _start
:st
set _distro=SliTaz
set _iso=slitaz-2.0.iso
set _download=http://mirror.switch.ch/ftp/mirror/slitaz/iso/2.0/slitaz-2.0.iso
goto _start
:hos
set _distro=Haiku OS
set _iso=haiku-alpha.image
goto _starthos
:su
set _distro=Super Ubuntu
set _iso=Super_OS_9.04.iso
set _download=ftp://linuxfreedom.com/superubuntu/Super_OS_9.04.iso
goto _start
:_start
if exist %_iso% goto isook else (
goto noiso
)
:isook
cls
echo ---%_distro%---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Borrar
echo      2) Volver
echo.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto deliso
if "%_ok%" == "2" goto menu
goto isook
:deliso
cls
echo ---%_distro%---
echo Estas seguro de que quieres borrar esta distribucion?
echo Escribe SI o NO.
echo.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "SI" goto delfiso
if "%_ok%" == "NO" goto isook
goto deliso
:delfiso
cls
echo ---%_distro%---
echo Borrando distribucion...
del %_iso%
cls
echo Distribucion borrada.
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:noiso
cls
echo ---%_distro%---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Descargar
echo      2) Volver
echo.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto downiso
if "%_ok%" == "2" goto menu
goto noiso
:downiso
cls
echo ---%_distro%---
echo Empezando la descarga. Pulsa Control-C para cancelar.
echo Si quieres continuar la descarga, ve a Menu - Opciones - Continuar Descarga.
echo.
.\wget\wget %_download% -c
if not exist %_iso% goto downiso
cls
echo ---%_distro%---
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:_starthos
cls
echo ---%_distro%---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Borrar
echo      2) Volver
echo.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto delhos
if "%_ok%" == "2" goto menu
goto _starthos
:delhos
cls
echo ---%_distro%---
echo Estas seguro de que quieres borrar esta distribucion?
echo Escribe SI o NO.
echo.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "SI" goto delfhos
if "%_ok%" == "NO" goto _starthos
goto delhos
:delfhos
cls
echo ---%_distro%---
echo Borrando distribucion...
del %_iso%
cls
echo Distribucion borrada.
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu