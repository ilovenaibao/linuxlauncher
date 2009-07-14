@echo off
if %1 == a goto floppy
if %1 == c goto hdd
if %1 == d goto cd
:floppy
set _boot=a
echo La disquetera arrancara primero al iniciar el emulador.
echo.
goto end
:hdd
set _boot=c
echo El disco duro arrancara primero al iniciar el emulador.
echo.
goto end
:cd
set _boot=d
echo El disco arrancara primero al iniciar el emulador.
echo.
goto end
:end
