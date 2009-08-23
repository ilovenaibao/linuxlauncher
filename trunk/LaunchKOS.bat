@echo off
title Linux Launcher 1.0.5 BETA - Emular Kolibri OS
cls
:open
cls
echo.
echo =======================================================================
echo     Emular Kolibri OS
echo =======================================================================
echo.
echo.
echo Se ejecutara la distribucion Kolibri OS desde tu PC usando QEMU.
echo Ten en cuenta que la distribucion Kolibri OS sera acelerada con Kqemu.
echo.
echo.
echo Pulsa una tecla para continuar o cierra esta ventana para salir.
pause > nul
cls
if exist c:\windows\system32\drivers\kqemu.sys goto conf else goto kqemu
cls
:kqemu 
rem .\qemu\kqemu.exe
goto conf
:conf
cls
echo Escoje tu configuración:
echo Memoria RAM:
echo.
echo.
echo      1) 128 MB
echo      2) 256 MB     
echo      3) 512 MB
echo      4) 1024 MB
echo      5) 2048 MB
echo.
set _ok=
set /p _ok=Escoje tu opcion: 
if "%_ok%" == "1" goto setm
if "%_ok%" == "2" goto setm
if "%_ok%" == "3" goto setm
if "%_ok%" == "4" goto setm
if "%_ok%" == "5" goto setm
goto conf
:setm
if "%_ok%" == "1" set mem=128
if "%_ok%" == "2" set mem=256
if "%_ok%" == "3" set mem=512
if "%_ok%" == "4" set mem=1024
if "%_ok%" == "5" set mem=2048
goto run
:run
echo.
echo Quieres ejecutar la distribucion en pantalla completa?
echo.
echo.
echo      1) Si
echo      2) No
set _ok=
set /p _ok=Escoje tu opcion:
if "%_ok%" == "1" goto run_yes
if "%_ok%" == "2" goto run_no
goto run
:run_yes
cls
echo. 
echo LINUX SE ESTA EJECUTANDO.
.\qemu\qemu -L .\qemu -kernel-kqemu -full-screen -localtime -soundhw all -m %mem% -cdrom kolibri.iso -hda hda.img -boot d
exit
:run_no
cls
echo. 
echo LINUX SE ESTA EJECUTANDO.
.\qemu\qemu -L .\qemu -kernel-kqemu -localtime -soundhw all -m %mem% -cdrom kolibri.iso -hda hda.img -boot d
exit