@echo off
title Linux Launcher 1.0.5 BETA
cls
color 0f
goto check
:check
if not exist hda.img goto noexist else (
goto menu
)
:noexist
cls
echo Bienvenido a Linux Launcher. Esta puede ser la primera vez que
echo ejectuas Linux Launcher, o tal vez se haya borrado el archivo 
echo de HDD. Por lo tanto, vamos a hacer un nuevo HDD virtual.
echo.
echo Pulsa una tecla para continuar.
pause > nul
create.bat
:menu
cls
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Ejecutar HDD
echo      2) Damm Small Linux
echo      3) BackTrack 3
echo      4) NimbleX
echo      5) KolibriOS
echo      6) Kubuntu
echo      7) Mas distribucoines Linux
echo      8) Opciones
echo      9) Cerrar
echo.
set _ok=
set /p _ok=Escoje tu opcion: 
if "%_ok%" == "1" goto HDD
if "%_ok%" == "2" goto DSL
if "%_ok%" == "3" goto BT
if "%_ok%" == "4" goto NX
if "%_ok%" == "5" LaunchKOS.bat
if "%_ok%" == "6" goto K
if "%_ok%" == "7" goto menu2
if "%_ok%" == "8" option.bat
if "%_ok%" == "9" exit
goto menu
:menu2
cls
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) SliTaz
echo      2) Puppy Linux
echo      3) Haiku OS
echo      4) GeeXboX
echo      5) Super Ubuntu
echo      6) 2/OS
echo      7) Linux Launcher Console
echo      8) Volver
echo      9) Cerrar
echo.
set _ok=
set /p _ok=Escoje tu opcion:
if "%_ok%" == "1" goto ST
if "%_ok%" == "2" goto PL
if "%_ok%" == "3" LaunchHOS.bat
if "%_ok%" == "4" goto GX
if "%_ok%" == "5" goto SU
if "%_ok%" == "6" goto 2os
if "%_ok%" == "7" goto console
if "%_ok%" == "8" goto menu
if "%_ok%" == "9" exit
goto menu2
:hdd
cls
set _distro_name=HDD
set _iso_name=hda.img
set _iso_url=hda.img
LaunchHDD.bat
:dsl
cls
set _distro_name=Damm Small Linux
set _iso_name=dsl-4.4.10-initrd.iso
set _iso_url=ftp://ibiblio.org/pub/Linux/distributions/damnsmall/current/dsl-4.4.10-initrd.iso
LaunchLIN.BAT
:bt
cls
set _distro_name=BackTrack 3
set _iso_name=bt3-final.iso
set _iso_url=http://cesium.di.uminho.pt/pub/backtrack/bt3-final.iso
LaunchLIN.bat
:nx
cls
set _distro_name=NimbleX
set _iso_name=NimbleX-2008.iso
set _iso_url=ftp://ftp.iasi.roedu.net/pub/sponsored-projects/nimblex/NimbleX-2008.iso
LaunchLIN.bat
:k
cls
set _distro_name=Kubuntu
set _iso_name=kubuntu-9.04-desktop-i386.iso
set _iso_url=ftp://ftp.rediris.es/sites/releases.ubuntu.com/releases/kubuntu/jaunty/kubuntu-9.04-desktop-i386.iso
LaunchLIN.bat
:st
cls
set _distro_name=SliTaz
set _iso_name=slitaz-2.0.iso
set _iso_url=http://mirror.switch.ch/ftp/mirror/slitaz/iso/2.0/slitaz-2.0.iso
LaunchLIN.bat
:pl
cls
set _distro_name=Puppy Linux
set _iso_name=puppy-4.2.1-k2.6.25.16-seamonkey.iso
set _iso_url=ftp://ibiblio.org/pub/linux/distributions/puppylinux/puppy-4.2.1-k2.6.25.16-seamonkey.iso
LaunchLIN.bat
:gx
cls
set _distro_name=GeeXboX
set _iso_name=geexbox-1.2.3-en.i386.glibc.iso
set _iso_url=http://www1.geexbox.org/releases/1.2.3/geexbox-1.2.3-en.i386.glibc.iso
LaunchLIN.bat
:su
cls
set _distro_name=Super Ubuntu
set _iso_name=Super_OS_9.04.iso
set _iso_url=ftp://linuxfreedom.com/superubuntu/Super_OS_9.04.iso
LaunchLIN.bat
:2os
set _distro_name=2/OS
set _iso_name=2os400.img
set _iso_url=http://downloads.sourceforge.net/project/meos/binarys/4.00/2os400.img
LaunchHDD.bat
:console
cd console
_start.bat