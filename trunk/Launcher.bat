@echo off
title Linux Launcher 1.0.0 BETA
cls
goto check
:check
if not exist hda.img goto noexist else (
goto menu
)
:noexist
cls
echo Bienvenido a Linux Launcher. Esta puede ser la primera vez que
echo ejectuas Linux Launcher, o tal vez se haya borrado el archivo 
echo de HDD. Por lo tanto, vamos a hacer un nuevo HDD.
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
echo      7) Mas distribucoines Liux
echo      8) Opciones
echo      9) Cerrar
echo.
set _ok=
set /p _ok=Escoje tu opcion: 
if "%_ok%" == "1" LaunchHDD.bat
if "%_ok%" == "2" LaunchDSL.bat
if "%_ok%" == "3" LaunchBT.bat
if "%_ok%" == "4" LaunchNX.bat
if "%_ok%" == "5" LaunchKOS.bat
if "%_ok%" == "6" LaunchK.bat
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
echo      6) Volver
echo      7) Cerrar
echo.
set _ok=
set /p _ok=Escoje tu opcion:
if "%_ok%" == "1" LaunchST.bat
if "%_ok%" == "2" LaunchPL.bat
if "%_ok%" == "3" LaunchHOS.bat
if "%_ok%" == "4" LaunchGX.bat
if "%_ok%" == "5" LaunchSU.bat
if "%_ok%" == "6" goto menu
if "%_ok%" == "7" exit
goto menu2