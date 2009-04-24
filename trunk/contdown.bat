@echo off
title Linux Launcher 1.0.0 BETA - Opciones - Continuar descargas
:menu
cls
echo Selecciona la distribucion que quieres continuar descargando
echo.
echo.
echo      1) BackTrack 3 Final
echo      2) Damm Small Linux
echo      3) NimbleX
echo      4) Kubuntu
echo      5) Puppy Linux
echo      6) SliTaz
echo      7) GeeXboX
echo      8) Exit
echo.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto downbt
if "%_ok%" == "2" goto downdsl
if "%_ok%" == "3" goto downnx
if "%_ok%" == "4" goto downk
if "%_ok%" == "5" goto downpl
if "%_ok%" == "6" goto downst
if "%_ok%" == "6" goto downgx
if "%_ok%" == "8" option.bat
goto menu
:downdsl
cls
echo Espera mientras se descarga o cierra la ventana para cancelar.
.\wget\wget ftp://ibiblio.org/pub/Linux/distributions/damnsmall/current/dsl-4.4.10-initrd.iso
cls
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
option.bat
:downbt
cls
echo Espera mientras se descarga o cierra la ventana para cancelar.
.\wget\wget http://cesium.di.uminho.pt/pub/backtrack/bt3-final.iso
cls
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
option.bat
:downnx
cls
echo Espera mientras se descarga o cierra la ventana para cancelar.
.\wget\wget ftp://ftp.iasi.roedu.net/pub/sponsored-projects/nimblex/NimbleX-2008.iso
cls
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
option.bat
:downk
cls
echo Espera mientras se descarga o cierra la ventana para cancelar.
.\wget\wget ftp://ftp.rediris.es/sites/releases.ubuntu.com/releases/kubuntu/intrepid/kubuntu-8.10-desktop-i386.iso
cls
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
option.bat
:downpl
cls
echo Espera mientras se descarga o cierra la ventana para cancelar.
.\wget\wget http://distro.ibiblio.org/pub/linux/distributions/puppylinux/puppy-4.1.2-k2.6.25.16-seamonkey.iso
cls
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
option.bat
:downst
cls
echo Espera mientras se descarga o cierra la ventana para cancelar.
.\wget\wget http://mirror.slitaz.org/iso/cooking/slitaz-cooking.iso
cls
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
option.bat
:downgx
cls
echo Espera mientras se descarga o cierra la ventana para cancelar.
.\wget\wget http://www1.geexbox.org/releases/1.2.1/geexbox-1.2.1-en.i386.glibc.iso
cls
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
option.bat