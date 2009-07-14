@echo off
title Linux Launcher 1.0.3 BETA - Opciones
:menu
cls
echo Selecciona la opcion que desees hacer:
echo.
echo.
echo      1) Crear un nuevo HDD
echo      2) Administrar distribuciones Linux
echo      3) Continuar descargas
echo      4) Administrar HDD
echo      5) Linux Launcher Maker
echo      6) Versiones de distribuciones Linux
echo      7) Usar CD2USB
echo      8) Desinstalar Linux Launcher
echo      9) Volver
echo      0) Salir
echo.
set _ok=
set /p _ok=Escoje una opcion:
if "%_ok%" == "1" create.bat
if "%_ok%" == "2" confdist.bat
if "%_ok%" == "3" contdown.bat
if "%_ok%" == "4" manage.bat
if "%_ok%" == "5" llmm.bat
if "%_ok%" == "6" version.bat
if "%_ok%" == "7" goto cd2usb
if "%_ok%" == "8" Uninstall.bat
if "%_ok%" == "9" Launcher.bat
if "%_ok%" == "0" exit
goto menu
:cd2usb
cd .\cd2usb
cd2usb.bat