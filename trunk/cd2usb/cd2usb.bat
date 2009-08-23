@echo off
cls
title Linux Launcher 1.0.4 BETA - Opciones - CD2USB
echo.
echo =======================================
echo       cd2usb - hacktolive.org/cd2usb
echo.
echo            version 0.5
echo.
echo =======================================
echo.
echo.
echo Utility designed to make Live USBs of Ubuntu (and Super OS)
echo Live USB: Operating system than can be booted from a USB flash drive
echo cd2usb can create bootable HDDs, USB Flash drives, memory cards, etc...
echo.
pause
set casper_exists=-1
set bootloader_exists=0
set source=0
REM "running_from_cd" can be "true" or "false" (no quotes)
set running_from_cd=false
set download=0

:menu
if ‘%running_from_cd%’ == ‘true’ goto choose_usb_drive
cls
echo Options:
echo 1 - Do you want to use a CD/DVD of Ubuntu you already have?
echo 2 - Do you want to use an ISO of Ubuntu you already have?
echo 3 - Do you want me to automatically download an ISO of Ubuntu 9.04?
echo.
echo Enter the option you want (1, 2 or 3) and press ENTER:
set /p option_menu=
if ‘%option_menu%’ == ‘1’ set source=user_cd
if ‘%option_menu%’ == ‘1’ goto choose_cd_drive
if ‘%option_menu%’ == ‘2’ goto check_iso
if ‘%option_menu%’ == ‘3’ goto download_iso
echo Option not valid!
pause
goto menu

:download_iso
set download=1
cls
echo Ubuntu 9.04 will now be downloaded...
echo.
if exist ubuntu-9.04-desktop-i386.iso del ubuntu-9.04-desktop-i386.iso
if exist os.iso goto duplicated_iso_found
backend\wget.exe http://releases.ubuntu.com/jaunty/ubuntu-9.04-desktop-i386.iso
ren ubuntu-9.04-desktop-i386.iso os.iso
goto check_iso

:duplicated_iso_found
cls
echo A file named os.iso already exists! do you want to delete it?
echo 1 - Yes, delete it and continue the download of a new file
echo 2 - No, go back
echo.
echo Enter the option you want (1 or 2) and press ENTER:
set /p option_delete_iso=
if ‘%option_delete_iso%’ == ‘1’ del os.iso
if ‘%option_delete_iso%’ == ‘1’ goto download_iso
if ‘%option_delete_iso%’ == ‘2’ goto menu
echo Option not valid!
pause
goto duplicated_iso_found

:check_iso
cls
if exist os.iso (
if ‘%download%’ == ‘1’ echo Ubuntu was downloaded! It will now be used...
if ‘%download%’ == ‘0’ echo A file named os.iso was found! It will now be used...
set source=iso
echo.
pause
goto choose_usb_drive)
goto iso_error

:iso_error
echo The file "os.iso" was not found!
echo.
echo You must place a file named os.iso
echo in the folder were this program is
echo.
pause
echo.
goto menu

:choose_cd_drive
echo.
echo.
echo.
echo Enter the letter of the CD/DVD Drive of Ubuntu (A - Z):
set /p cd_drive=
if ‘%cd_drive%’ == ‘A’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘B’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘C’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘D’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘E’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘F’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘G’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘H’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘I’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘J’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘K’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘L’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘M’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘N’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘O’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘P’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘Q’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘R’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘S’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘T’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘U’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘V’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘W’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘X’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘Y’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘Z’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘a’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘b’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘c’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘d’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘e’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘f’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘g’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘h’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘i’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘j’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘k’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘l’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘m’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘n’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘o’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘p’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘q’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘r’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘s’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘t’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘u’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘v’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘w’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘x’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘y’ goto choose_usb_drive
if ‘%cd_drive%’ == ‘z’ goto choose_usb_drive
goto cd_drive_error

:cd_drive_error
cls
echo That drive letter is not valid...
echo.
pause
goto choose_cd_drive

:choose_usb_drive
echo.
echo.
echo.
echo Enter the letter of the USB Flash Drive (A - Z):
set /p usb_drive=
if ‘%usb_drive%’ == ‘A’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘B’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘C’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘D’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘E’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘F’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘G’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘H’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘I’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘J’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘K’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘L’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘M’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘N’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘O’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘P’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘Q’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘R’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘S’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘T’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘U’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘V’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘W’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘X’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘Y’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘Z’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘a’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘b’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘c’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘d’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘e’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘f’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘g’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘h’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘i’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘j’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘k’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘l’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘m’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘n’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘o’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘p’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘q’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘r’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘s’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘t’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘u’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘v’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘w’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘x’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘y’ goto choose_casper-rw_size
if ‘%usb_drive%’ == ‘z’ goto choose_casper-rw_size
goto usb_drive_error

:usb_drive_error
cls
echo That drive letter is not valid...
echo.
pause
goto choose_usb_drive

:choose_casper-rw_size
cls
echo Select the size of the persistency file,
echo it must be an exact value in this list:
echo.
echo      0  (no file will be created)
echo      128 MB
echo      256 MB
echo      512 MB
echo      1024 MB  (1 GB)
echo      2048 MB  (2 GB)
echo      4096 MB  (4 GB)
echo.
echo Note: only works with Ubuntu 8.10+
echo.
echo Size (in MB):
set /p casper-rw_size=
if ‘%casper-rw_size%’ == ‘0’ set casper_exists=0
if ‘%casper-rw_size%’ == ‘128’ set casper_exists=1
if ‘%casper-rw_size%’ == ‘256’ set casper_exists=1
if ‘%casper-rw_size%’ == ‘512’ set casper_exists=1
if ‘%casper-rw_size%’ == ‘1024’ set casper_exists=1
if ‘%casper-rw_size%’ == ‘2048’ set casper_exists=1
if ‘%casper-rw_size%’ == ‘4096’ set casper_exists=1
if ‘%casper_exists%’ == ‘0’ goto confirmation
if ‘%casper_exists%’ == ‘1’ goto confirmation
goto error_casper-rw_size

:error_casper-rw_size
cls
echo.
echo  That size is not valid! Let's try again...
echo.
pause
goto choose_casper-rw_size

:confirmation
cls
echo Ubuntu will now be installed on the drive %usb_drive%
if ‘%casper_exists%’ == ‘1’ echo With a persistence file of %casper-rw_size% MB
if ‘%casper_exists%’ == ‘0’ echo With no persistence file
echo.
echo Do you want to continue?
echo 1 - Yes
echo 2 - No (go back to main menu)
echo.
echo Enter the option you want (1 or 2) and press ENTER:
set /p option_confirmation=
if ‘%option_confirmation%’ == ‘1’ goto make_bootable
if ‘%option_confirmation%’ == ‘2’ goto menu
echo Option not valid!
pause
goto confirmation
echo.

:make_bootable
echo Files will now be copied to the USB device...
echo.
if ‘%source%’ == ‘iso’ backend\7z.exe x os.iso -y -x!bin -x!programs -x![BOOT] -o%usb_drive%:
if ‘%source%’ == ‘iso’ echo Finished extracting files fom the ISO...
if ‘%source%’ == ‘user_cd’ backend\robocopy.exe %cd_drive%: %usb_drive%: /E
if ‘%source%’ == ‘user_cd’ echo Finished copying files from the CD/DVD...
if ‘%running_from_cd%’ == ‘true’ backend\robocopy.exe %~d0 %usb_drive%: /E
if ‘%running_from_cd%’ == ‘true’ echo Finished copying files from the CD/DVD...
echo Moving and renaming some files...
ren %usb_drive%:\isolinux syslinux
ren %usb_drive%:\syslinux\isolinux.cfg syslinux.cfg
ATTRIB -R %usb_drive%:\syslinux\text.cfg
copy backend\text.cfg %usb_drive%:\syslinux\
echo Finished moving and renaming files...
echo The bootloader will now be installed...
backend\syslinux.exe -m -a -f %usb_drive%:
if exist %usb_drive%:\ldlinux.sys set bootloader_exists=1
if ‘%bootloader_exists%’== ‘1’ echo Bootloader installed successfully!
if ‘%bootloader_exists%’== ‘0’ echo There was an error installing the bootloader!
if ‘%casper_exists%’ == ‘1’ echo The persistence file will now be created...
if ‘%casper_exists%’ == ‘1’ backend\7z.exe x backend\casper-rw\%casper-rw_size%.rar -y -o%usb_drive%:
if ‘%casper_exists%’ == ‘1’ echo Finished creating persistence file...
echo.
echo.
echo.
echo.
echo If you see no errors above, it is time to test your Live USB!
echo All finished here!
if ‘%download%’ == ‘1’ echo You might want to delete the ISO of Ubuntu that was automatically downloaded,
if ‘%download%’ == ‘1’ echo it is located at %CD%
echo.
echo Press ENTER to quit program...
pause > nul

