@echo off
title Linux Launcher 1.0.2 BETA - Linux Launcher Console
cls
echo Bienvenido a Linux Launcher Console.
echo.
echo Linux Launcher Console usa una interfaz de consola para poner mas
echo configuraciones.
echo.
echo Linux Launcher Console solo emulara distribuciones ya descargadas y externas,
echo es decir, podras emular tus ISOs excepto las internas
echo de Linux Launcher, pero se trabajara en esto.
echo.
echo Si quieres saber los comandos, escribe "commands".
echo.
echo Pulsa una tecla para comenzar.
pause > nul
set _memory=blank
set _iso=blank
set _hda=blank
set _floppy=blank
set _fullscreen=blank
set _kqemu=blank
set _localtime=blank
set _boot=blank
start cmd.exe /k prompt Linux Launcher Console $G 
exit