@echo off
title Linux Launcher 1.0.5 BETA - Emular %_distro_name%
:menu
cls
if exist "%_iso_name%" goto open else (
echo No tienes descargada la distribucion %_distro_name%.
echo Quieres descargarla?
echo.
echo     1) Descargar y ejectuar
echo     2) Descargar y salir
echo     3) Salir
set _ok=
set /p _ok=Escoje tu opcion :
if "%_ok%" == "1" goto autorun
if "%_ok%" == "2" goto autoexit
if "%_ok%" == "3" launcher.bat
goto menu
)
:autorun
cls
echo Si cierras esta ventana y quieres volver a continuar tu descarga,
echo ve a Menu - Opciones - Continuar descarga
echo.
.\wget\wget "%_iso_url%" -c
if exist "%_iso_name%" goto open else (
goto autorun
)
:autoexit
cls
echo Si cierras esta ventana y quieres volver a continuar tu descarga,
echo ve a Menu - Opciones - Continuar descarga
echo.
.\wget\wget "%_iso_url%" -c
if exist "%_iso_name%" exit else (
goto autoexit
)
:open
cls
echo.
echo =======================================================================
echo    Emular %_distro_name% 
echo =======================================================================
echo.
echo.
echo Se ejecutara la distribucion %_distro_name% desde tu PC usando QEMU.
echo Ten en cuenta que la distribucion %_distro_name% sera acelerada con Kqemu.
echo.
echo.
echo Pulsa una tecla para continuar o cierra esta ventana para salir.
pause > nul
cls
if exist c:\windows\system32\drivers\kqemu.sys goto conf else goto kqemu
cls
:kqemu
REM .\qemu\kqemu.exe
goto conf
:conf
cls
echo Escoje tu configuracion:
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
set /p _ok=Escoje tu opcion :
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
echo Quieres ejecutar la distribucion %_distro_name% en pantalla completa?
echo.
echo.
echo      1) Si
echo      2) No
set _ok=
set /p _ok=Escoje tu opcion :
if "%_ok%" == "1" goto run_yes
if "%_ok%" == "2" goto run_no
goto run
:run_yes
cls
echo. 
echo LINUX SE ESTA EJECUTANDO.
.\qemu\qemu -L .\qemu -kernel-kqemu -full-screen -localtime -soundhw all -m %mem% -cdrom "%_iso_name%" -hda hda.img -boot d
exit
:run_no
cls
echo. 
echo LINUX SE ESTA EJECUTANDO.
.\qemu\qemu -L .\qemu -kernel-kqemu -localtime -soundhw all -m %mem% -cdrom "%_iso_name%" -hda hda.img -boot d
exit