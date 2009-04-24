@echo off
set _distro_name=HDD
set _iso_name=hda.img
set _iso_url=hda.img
title Linux Launcher 1.0.0 BETA - Emular %_distro_name%
:open
cls
echo.
echo =======================================================================
echo    Emular %_distro_name% 
echo =======================================================================
echo.
echo.
echo Se ejecutará el HDD virtual desde tu PC usando QEMU.
echo Ten en cuenta que el SO del HDD sera acelerado con Kqemu.
echo.
echo.
echo Pulsa una tecla para continuar o cierra esta ventana para salir.
pause > nul
cls
if exist c:\windows\system32\drivers\kqemu.sys goto conf else goto kqemu
cls
:kqemu 
.\qemu\kqemu.exe
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
echo.
set _ok=
set /p _ok=Escoje tu opcion :
if "%_ok%" == "1" goto run1
if "%_ok%" == "2" goto run2
if "%_ok%" == "3" goto run3
if "%_ok%" == "4" goto run4
goto conf
:run1
echo Quieres ejecutar el HDD en pantalla completa?
echo.
echo.
echo      1) Si
echo      2) No
set _ok=
set /p _ok=Escoje tu opcion :
if "%_ok%" == "1" goto run1yes
if "%_ok%" == "2" goto run1no
goto run1
:run1yes
cls
echo. 
echo EL HDD SE ESTA EJECUTANDO.
start .\qemu\qemu -L .\qemu -kernel-kqemu -full-screen -std-vga -localtime -soundhw all -m 128 -hda hda.img -boot c
exit
:run1no
cls
echo. 
echo EL HDD SE ESTA EJECUTANDO.
start .\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -localtime -soundhw all -m 128 -hda hda.img -boot c
exit
:run2
echo Quieres ejecutar el HDD en pantalla completa?
echo.
echo.
echo      1) Si
echo      2) No
set _ok=
set /p _ok=Escoje tu opcion :
if "%_ok%" == "1" goto run2yes
if "%_ok%" == "2" goto run2no
goto run2
:run2yes
cls
echo. 
echo EL HDD SE ESTA EJECUTANDO.
start .\qemu\qemu -L .\qemu -kernel-kqemu -full-screen -std-vga -localtime -soundhw all -m 256 -hda hda.img -boot c
exit
:run2no
echo. 
echo EL HDD SE ESTA EJECUTANDO.
start .\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -localtime -soundhw all -m 256 -hda hda.img -boot c
exit
:run3
echo Quieres ejecutar el HDD en pantalla completa?
echo.
echo.
echo      1) Si
echo      2) No
set _ok=
set /p _ok=Escoje tu opcion :
if "%_ok%" == "1" goto run3yes
if "%_ok%" == "2" goto run3no
goto run3
:run3yes
cls
echo. 
echo EL HDD SE ESTA EJECUTANDO.
start .\qemu\qemu -L .\qemu -kernel-kqemu -full-screen -std-vga -localtime -soundhw all -m 512 -hda hda.img -boot c
exit
:run3no
echo. 
echo EL HDD SE ESTA EJECUTANDO.
start .\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -localtime -soundhw all -m 512 -hda hda.img -boot c
exit
:run4
echo Quieres ejecutar el HDD en pantalla completa?
echo.
echo.
echo      1) Si
echo      2) No
set _ok=
set /p _ok=Escoje tu opcion :
if "%_ok%" == "1" goto run4yes
if "%_ok%" == "2" goto run4no
goto run4
:run4yes
cls
echo. 
echo EL HDD SE ESTA EJECUTANDO.
start .\qemu\qemu -L .\qemu -kernel-kqemu -full-screen -std-vga -localtime -soundhw all -m 1024 -hda hda.img -boot c
exit
:run4no
echo. 
echo EL HDD SE ESTA EJECUTANDO.
start .\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -localtime -soundhw all -m 1024 -hda hda.img -boot c
exit