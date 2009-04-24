@echo off
title Linux Launcher 1.0.0 BETA - Emular Haiku OS
:menu
cls
if not exist haiku-alpha.image goto download
echo Do you want to check for updates/download?
echo.
echo     1) Check for updates/Download
echo     2) Run
echo     3) Exit
set _ok=
set /p _ok=Enter your choice :
if "%_ok%" == "1" goto download
if "%_ok%" == "2" goto run
if "%_ok%" == "3" launcher.bat
goto menu
:download
cls
echo Downloading info download...
set haikuosv=0002
.\wget\wget http://dataduhowpi.googlepages.com/updatehos.bat
updatehos.bat
:run
cls
echo.
echo =======================================================================
echo     Haiku OS Qemu Launcher 
echo =======================================================================
echo.
echo.
echo This file will launch Haiku OS from your Windows PC using QEMU emulation
echo Please note that Haiku OS will also be launched accelerated with Kqemu.
echo.
echo.
echo WARNING!! This utility is being offered for free with absolutely no warranty 
echo in hopes that it will be useful. USE IT AT YOUR OWN RISK!
echo.
echo.
echo Press any key to continue or close this window to exit...
pause > nul
cls
if exist c:\windows\system32\drivers\kqemu.sys ( 
goto conf) else (
echo.
echo STAGE 1: Checking for and installing accelerated driver . . .
echo Vista users need to allow permissions to install Kqemu if asked.
goto kqemu) 
cls

:kqemu 
copy .\qemu\kqemu.sys %SystemRoot%\drivers\kqemu.sys
echo.
echo STAGE 2: The Kqemu accelerator has been offered for installation.
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
.\qemu\qemu -L .\qemu -full-screen -std-vga -localtime -soundhw all -m 128 -hda haiku-alpha.image -boot c
exit
:run1no
cls
echo. 
echo LINUX IS NOW RUNNING, Do not close this windows while linux is running!
echo Close only once Linux has shutdown.
.\qemu\qemu -L .\qemu -std-vga -localtime -soundhw all -m 128 -hda haiku-alpha.image -boot c
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
.\qemu\qemu -L .\qemu -full-screen -std-vga -localtime -soundhw all -m 256 -hda haiku-alpha.image -boot c
exit
:run2no
echo. 
echo LINUX IS NOW RUNNING, Do not close this windows while linux is running!
echo Close only once Linux has shutdown.
.\qemu\qemu -L .\qemu -std-vga -localtime -soundhw all -m 256 -hda haiku-alpha.image -boot c
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
.\qemu\qemu -L .\qemu -full-screen -std-vga -localtime -soundhw all -m 512 -hda haiku-alpha.image -boot c
exit
:run3no
echo. 
echo LINUX IS NOW RUNNING, Do not close this windows while linux is running!
echo Close only once Linux has shutdown.
.\qemu\qemu -L .\qemu -std-vga -localtime -soundhw all -m 512 -hda haiku-alpha.image -boot c
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
.\qemu\qemu -L .\qemu -full-screen -std-vga -localtime -soundhw all -m 1024 -hda haiku-alpha.image -boot c
exit
:run4no
echo. 
echo LINUX IS NOW RUNNING, Do not close this windows while linux is running!
echo Close only once Linux has shutdown.
.\qemu\qemu -L .\qemu -std-vga -localtime -soundhw all -m 1024 -hda haiku-alpha.image -boot c
exit