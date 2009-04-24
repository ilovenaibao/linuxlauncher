@echo off
title Linux Launcher 1.0.0  BETA - Opciones - Crear nuevo HDD
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
echo      0) Salir
echo.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto cr1
if "%_ok%" == "2" goto cr2
if "%_ok%" == "3" goto cr3
if "%_ok%" == "4" goto cr4
if "%_ok%" == "5" goto cr5
if "%_ok%" == "6" goto cr6
if "%_ok%" == "7" goto cr7
if "%_ok%" == "8" goto cr8
if "%_ok%" == "9" goto cr9
if "%_ok%" == "0" Launcher.bat
goto m1
:cr1
cls
echo Estas seguro de que quieres hacer un nuevo HDD?
echo El HDD existente sera borrado.
echo.
echo.
echo      1) Si, continuar.
echo      2) No, salir.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto crf1
if "%_ok%" == "2" Launcher.bat
goto cr1
:crf1
cls
echo Borrando HDD existente...
del .\hda.img
cls
echo Haciendo nuevo HDD, esto tarda unos minutos. NO CIERRES LA VENTANA!
.\qemu\qemu-img create hda.img 10M .\
cls
echo El HDD ha sido creado correctamente!
echo Pulsa una tecla para volver al menu.
pause > nul
Launcher.bat
:cr2
cls
echo Estas seguro de que quieres hacer un nuevo HDD?
echo El HDD existente sera borrado.
echo.
echo.
echo      1) Si, continuar.
echo      2) No, salir.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto crf2
if "%_ok%" == "2" Launcher.bat
goto cr2
:crf2
cls
echo Borrando HDD existente...
del .\hda.img
cls
echo Haciendo nuevo HDD, esto tarda unos minutos. NO CIERRES LA VENTANA!
.\qemu\qemu-img create hda.img 50M .\
cls
echo El HDD ha sido creado correctamente!
echo Pulsa una tecla para volver al menu.
pause > nul
Launcher.bat
:cr3
cls
echo Estas seguro de que quieres hacer un nuevo HDD?
echo El HDD existente sera borrado.
echo.
echo.
echo      1) Si, continuar.
echo      2) No, salir.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto crf3
if "%_ok%" == "2" Launcher.bat
goto cr3
:crf3
cls
echo Borrando HDD existente...
del .\hda.img
cls
echo Haciendo nuevo HDD, esto tarda unos minutos. NO CIERRES LA VENTANA!
.\qemu\qemu-img create hda.img 100M .\
cls
echo El HDD ha sido creado correctamente!
echo Pulsa una tecla para volver al menu.
pause > nul
Launcher.bat
:cr4
cls
echo Estas seguro de que quieres hacer un nuevo HDD?
echo El HDD existente sera borrado.
echo.
echo.
echo      1) Si, continuar.
echo      2) No, salir.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto crf4
if "%_ok%" == "2" Launcher.bat
goto cr4
:crf4
cls
echo Borrando HDD existente...
del .\hda.img
cls
echo Haciendo nuevo HDD, esto tarda unos minutos. NO CIERRES LA VENTANA!
.\qemu\qemu-img create hda.img 200M .\
cls
echo El HDD ha sido creado correctamente!
echo Pulsa una tecla para volver al menu.
pause > nul
Launcher.bat
:cr5
cls
echo Estas seguro de que quieres hacer un nuevo HDD?
echo El HDD existente sera borrado.
echo.
echo.
echo      1) Si, continuar.
echo      2) No, salir.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto crf5
if "%_ok%" == "2" Launcher.bat
goto cr5
:crf5
cls
echo Borrando HDD existente...
del .\hda.img
cls
echo Haciendo nuevo HDD, esto tarda unos minutos. NO CIERRES LA VENTANA!
.\qemu\qemu-img create hda.img 500M .\
cls
echo El HDD ha sido creado correctamente!
echo Pulsa una tecla para volver al menu.
pause > nul
Launcher.bat
:cr6
cls
echo Estas seguro de que quieres hacer un nuevo HDD?
echo El HDD existente sera borrado.
echo.
echo.
echo      1) Si, continuar.
echo      2) No, salir.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto crf6
if "%_ok%" == "2" Launcher.bat
goto cr6
:crf6
cls
echo Borrando HDD existente...
del .\hda.img
cls
echo Haciendo nuevo HDD, esto tarda unos minutos. NO CIERRES LA VENTANA!
.\qemu\qemu-img create hda.img 1G .\
cls
echo El HDD ha sido creado correctamente!
echo Pulsa una tecla para volver al menu.
pause > nul
Launcher.bat
:cr7
cls
echo Estas seguro de que quieres hacer un nuevo HDD?
echo El HDD existente sera borrado.
echo.
echo.
echo      1) Si, continuar.
echo      2) No, salir.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto crf7
if "%_ok%" == "2" Launcher.bat
goto cr7
:crf7
cls
echo Borrando HDD existente...
del .\hda.img
cls
echo Haciendo nuevo HDD, esto tarda unos minutos. NO CIERRES LA VENTANA!
.\qemu\qemu-img create hda.img 2G .\
cls
echo El HDD ha sido creado correctamente!
echo Pulsa una tecla para volver al menu.
pause > nul
Launcher.bat
:cr8
cls
echo Estas seguro de que quieres hacer un nuevo HDD?
echo El HDD existente sera borrado.
echo.
echo.
echo      1) Si, continuar.
echo      2) No, salir.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto crf8
if "%_ok%" == "2" Launcher.bat
goto cr8
:crf8
cls
echo Borrando HDD existente...
del .\hda.img
cls
echo Haciendo nuevo HDD, esto tarda unos minutos. NO CIERRES LA VENTANA!
.\qemu\qemu-img create hda.img 5G .\
cls
echo El HDD ha sido creado correctamente!
echo Pulsa una tecla para volver al menu.
pause > nul
Launcher.bat
:cr9
cls
echo Estas seguro de que quieres hacer un nuevo HDD?
echo El HDD existente sera borrado.
echo.
echo.
echo      1) Si, continuar.
echo      2) No, salir.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto crf9
if "%_ok%" == "2" Launcher.bat
goto cr9
:crf9
cls
echo Borrando HDD existente...
del .\hda.img
cls
echo Haciendo nuevo HDD, esto tarda unos minutos. NO CIERRES LA VENTANA!
.\qemu\qemu-img create hda.img 10G .\
cls
echo El HDD ha sido creado correctamente!
echo Pulsa una tecla para volver al menu.
pause > nul
Launcher.bat