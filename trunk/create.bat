@echo off
title Linux Launcher 1.0.5  BETA - Opciones - Crear nuevo HDD
cls
:m1
cls
echo Seleciona el tamano del nuevo HDD que quieres hacer:
echo.
echo.
echo      1) 10 MB
echo      2) 50 MB
echo      3) 100 MB
echo      4) 200 MB
echo      5) 500 MB
echo      6) 1 GB
echo      7) 2 GB
echo      8) 5 GB
echo      9) 10 GB
echo      10) 20 GB
echo      0) Salir
echo.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto seta
if "%_ok%" == "2" goto seta
if "%_ok%" == "3" goto seta
if "%_ok%" == "4" goto seta
if "%_ok%" == "5" goto seta
if "%_ok%" == "6" goto seta
if "%_ok%" == "7" goto seta
if "%_ok%" == "8" goto seta
if "%_ok%" == "9" goto seta
if "%_ok%" == "10" goto seta
if "%_ok%" == "0" Launcher.bat
goto m1
:seta
if "%_ok%" == "1" set hdd=10M
if "%_ok%" == "2" set hdd=50M
if "%_ok%" == "3" set hdd=100M
if "%_ok%" == "4" set hdd=200M
if "%_ok%" == "5" set hdd=500M
if "%_ok%" == "6" set hdd=1G
if "%_ok%" == "7" set hdd=2G
if "%_ok%" == "8" set hdd=5G
if "%_ok%" == "9" set hdd=10G
if "%_ok%" == "10" set hdd=20G
goto cr
:cr
cls
echo Estas seguro de que quieres hacer un nuevo HDD?
echo El HDD virtual existente sera borrado.
echo.
echo.
echo      1) Si, continuar.
echo      2) No, salir.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto crf
if "%_ok%" == "2" Launcher.bat
goto cr
:crf
cls
echo Borrando HDD existente...
del .\hda.img
cls
echo Haciendo nuevo HDD, esto tarda unos minutos. NO CIERRES LA VENTANA!
.\qemu\qemu-img create hda.img %hdd% .\ -f qcow2
cls
echo El HDD ha sido creado correctamente!
echo Pulsa una tecla para volver al menu.
pause > nul
Launcher.bat