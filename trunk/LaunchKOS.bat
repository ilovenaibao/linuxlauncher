@echo off
title Linux Launcher 1.0.0 BETA - Emular Kolibri OS
cls
:open
cls
echo.
echo =======================================================================
echo     Emular Kolibri OS
echo =======================================================================
echo.
echo.
echo Se ejecutar� la distribucion Kolibri OS desde tu PC usando QEMU.
echo Ten en cuenta que la distribucion Kolibri OS sera acelerada con Kqemu.
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
echo Select your configuration.
echo Memory RAM:
echo.
echo.
echo      1) 128 MB
echo      2) 256 MB     
echo      3) 512 MB
echo      4) 1024 MB
echo.
set _ok=
set /p _ok=Enter your choice :
if "%_ok%" == "1" goto run1
if "%_ok%" == "2" goto run2
if "%_ok%" == "3" goto run3
if "%_ok%" == "4" goto run4
goto conf
:run1
echo Do you want to run in Full Screen?
echo.
echo.
echo      1) Yes
echo      2) No
set _ok=
set /p _ok=Enter your choice :
if "%_ok%" == "1" goto run1yes
if "%_ok%" == "2" goto run1no
goto run1
:run1yes
cls
echo. 
echo LINUX IS NOW RUNNING, Do not close this windows while linux is running!
echo Close only once Linux has shutdown.
.\qemu\qemu -L .\qemu -kernel-kqemu -full-screen -std-vga -localtime -soundhw all -m 128 -cdrom kolibri.iso -hda hda.img -boot d
exit
:run1no
cls
echo. 
echo LINUX IS NOW RUNNING, Do not close this windows while linux is running!
echo Close only once Linux has shutdown.
.\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -localtime -soundhw all -m 128 -cdrom kolibri.iso -hda hda.img -boot d
exit
:run2
echo Do you want to run in Full Screen?
echo.
echo.
echo      1) Yes
echo      2) No
set _ok=
set /p _ok=Enter your choice :
if "%_ok%" == "1" goto run2yes
if "%_ok%" == "2" goto run2no
goto run2
:run2yes
cls
echo. 
echo LINUX IS NOW RUNNING, Do not close this windows while linux is running!
echo Close only once Linux has shutdown.
.\qemu\qemu -L .\qemu -kernel-kqemu -full-screen -std-vga -localtime -soundhw all -m 256 -cdrom kolibri.iso -hda hda.img -boot d
exit
:run2no
echo. 
echo LINUX IS NOW RUNNING, Do not close this windows while linux is running!
echo Close only once Linux has shutdown.
.\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -localtime -soundhw all -m 256 -cdrom kolibri.iso -hda hda.img -boot d
exit
:run3
echo Do you want to run in Full Screen?
echo.
echo.
echo      1) Yes
echo      2) No
set _ok=
set /p _ok=Enter your choice :
if "%_ok%" == "1" goto run3yes
if "%_ok%" == "2" goto run3no
goto run3
:run3yes
cls
echo. 
echo LINUX IS NOW RUNNING, Do not close this windows while linux is running!
echo Close only once Linux has shutdown.
.\qemu\qemu -L .\qemu -kernel-kqemu -full-screen -std-vga -localtime -soundhw all -m 512 -cdrom kolibri.iso -hda hda.img -boot d
exit
:run3no
echo. 
echo LINUX IS NOW RUNNING, Do not close this windows while linux is running!
echo Close only once Linux has shutdown.
.\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -localtime -soundhw all -m 512 -cdrom kolibri.iso -hda hda.img -boot d
exit
:run4
echo Do you want to run in Full Screen?
echo.
echo.
echo      1) Yes
echo      2) No
set _ok=
set /p _ok=Enter your choice :
if "%_ok%" == "1" goto run4yes
if "%_ok%" == "2" goto run4no
goto run4
:run4yes
cls
echo. 
echo LINUX IS NOW RUNNING, Do not close this windows while linux is running!
echo Close only once Linux has shutdown.
.\qemu\qemu -L .\qemu -kernel-kqemu -full-screen -std-vga -localtime -soundhw all -m 1024 -cdrom kolibri.iso -hda hda.img -boot d
exit
:run4no
echo. 
echo LINUX IS NOW RUNNING, Do not close this windows while linux is running!
echo Close only once Linux has shutdown.
.\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -localtime -soundhw all -m 1024 -cdrom kolibri.iso -hda hda.img -boot d
exit