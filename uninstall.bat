@echo off
cls
title Linux Launcher 1.0.5 - Desinstalador
:menu
cls
if not exist %programfiles%\Linux_Launcher goto noexist
echo Este programa desinstalara Linux Launcher 1.0.5 de tu ordenador.
echo Quieres continuar? Escribe SI o NO.
echo.
echo.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "SI" goto uninst
if "%_ok%" == "si" goto uninst
if "%_ok%" == "NO" exit
if "%_ok%" == "no" exit
goto menu
:noexist
cls
echo Linux Launcher no se ha instalado en la ruta adecuada o no esta instalado.
echo.
echo Pulse una tecla para salir.
pause > nul
exit
:uninst
cls
echo Desinstalando Linux Launcher...
echo.
echo.
cd %programfiles%
del /f /s /q Linux_Launcher
cd Linux_Launcher\cd2usb\backend
rd casper-rw
cd..
rd backend
cd..
rd cd2usb
cd qemu
rd keymaps
cd..
rd qemu
rd unzip
rd wget
cd..
rd Linux_Launcher
cls
echo Linux Launcher 1.0.5 ha sido desinstalado de su sistema.
echo.
echo Pulse una tecla para salir.
pause > nul
exit