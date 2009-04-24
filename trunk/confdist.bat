@echo off
title Linux Launcher 1.0.0 BETA - Opciones - Administrar distribuciones Linux
cls
:menu
cls
echo Selecciona la distribucion que quieres administrar:
echo.
echo.
echo      1) BackTrack 3
echo      2) Damm Small Linux
echo      3) NimbleX
echo      4) Kubuntu
echo      5) Puppy Linux
echo      6) SliTaz
echo      7) Haiku OS
echo      8) GeeXboX
echo      9) Volver
echo.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto searchbt
if "%_ok%" == "2" goto searchdsl
if "%_ok%" == "3" goto searchnx
if "%_ok%" == "4" goto searchk
if "%_ok%" == "5" goto searchpl
if "%_ok%" == "6" goto searchst
if "%_ok%" == "7" goto searchhos
if "%_ok%" == "8" goto searchgx
if "%_ok%" == "9" option.bat
goto menu
:searchbt
if exist bt3-final.iso goto bt else (
goto nobt
)
:bt
cls
echo    ---BackTrack 3---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Borrar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto delbt
if "%_ok%" == "2" goto menu
goto bt
:delbt
cls
echo               ---BackTrack 3---
echo Estas seguro de que quieres borrar esta distribucion? 
echo Escribe SI o NO.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "SI" goto delfbt
if "%_ok%" == "NO" goto bt
goto delbt
:delfbt
cls
echo    ---BackTrack 3---
echo Borrando distribucion...
del bt3-final.iso
cls
echo Distribucion borrada.
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:nobt
cls
echo     ---BackTrack 3---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Descargar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto downbt
if "%_ok%" == "2" goto menu
goto nobt
:downbt
cls
echo               ---BackTrack 3---
echo Empezando la descarga. Pulsa Control-C para cancelar.
echo Si cancelas y vuelves a descargar, la descarga comenzara 
echo desde el momento que la cancelaste.
.\wget\wget http://cesium.di.uminho.pt/pub/backtrack/bt3-final.iso
if not exist bt3-final.iso goto downbt
cls
echo    ---BackTrack 3---
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:searchdsl
if exist dsl-4.4.10-initrd.iso goto dsl else (
goto nodsl
)
:dsl
cls
echo    ---Damm Small Linux---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Borrar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto deldsl
if "%_ok%" == "2" goto menu
goto dsl
:deldsl
cls
echo               ---Damm Small Linux---
echo Estas seguro de que quieres borrar esta distribucion? 
echo Escribe SI o NO.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "SI" goto delfdsl
if "%_ok%" == "NO" goto dsl
goto deldsl
:delfdsl
cls
echo    ---Damm Small Linux---
echo Borrando distribucion...
del dsl-4.4.10-initrd.iso
cls
echo Distribucion borrada.
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:nodsl
cls
echo     ---Damm Small Linux---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Descargar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto downdsl
if "%_ok%" == "2" goto menu
goto nodsl
:downdsl
cls
echo               ---Damm Small Linux---
echo Empezando la descarga. Pulsa Control-C para cancelar.
echo Si cancelas y vuelves a descargar, la descarga comenzara 
echo desde el momento que la cancelaste.
.\wget\wget ftp://ibiblio.org/pub/Linux/distributions/damnsmall/current/dsl-4.4.10-initrd.iso
if not exist dsl-4.4.10-initrd.iso goto downdsl
cls
echo    ---Damm Small Linux---
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:searchnx
if exist NimbleX-2008.iso goto nx else (
goto nonx
)
:nx
cls
echo              ---NimbleX---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Borrar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto delnx
if "%_ok%" == "2" goto menu
goto nx
:delnx
cls
echo                              ---NimbleX---
echo Are you sure that you want to delete " NimbleX "?
echo Type YES or NO.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "SI" goto delfnx
if "%_ok%" == "NO" goto nx
goto delnx
:delfnx
cls
echo         --- NimbleX ---
echo Borrando distribucion...
del NimbleX-2008.iso
cls
echo Distribucion borrada.
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:nonx
cls
echo              ---NimbleX---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Descargar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto downnx
if "%_ok%" == "2" goto menu
goto nonx
:downnx
cls
echo                                 ---NimbleX---
echo Empezando la descarga. Pulsa Control-C para cancelar.
echo Si cancelas y vuelves a descargar, la descarga comenzara 
echo desde el momento que la cancelaste.
.\wget\wget ftp://ftp.iasi.roedu.net/pub/sponsored-projects/nimblex/NimbleX-2008.iso
if not exist NimbleX-2008.iso goto downnx
cls
echo        --- NimbleX ---
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:searchk
if exist kubuntu-8.10-desktop-i386.iso goto k else (
goto nok
)
:k
cls
echo         ---Kubuntu---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Borrar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto delk
if "%_ok%" == "2" goto menu
goto k
:delk
cls
echo                      ---Kubuntu---
echo Are you sure that you want to delete "Kubuntu"?
echo Type YES or NO.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "SI" goto delfk
if "%_ok%" == "NO" goto k
goto delk
:delfk
cls
echo       ---Kubuntu---
echo Borrando distribucion...
del kubuntu-8.10-desktop-i386.iso
cls
echo Distribucion borrada.
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:nok
cls
echo          ---Kubuntu---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Descargar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto downk
if "%_ok%" == "2" goto menu
goto nok
:downk
cls
echo                      ---Kubuntu---
echo Empezando la descarga. Pulsa Control-C para cancelar.
echo Si cancelas y vuelves a descargar, la descarga comenzara 
echo desde el momento que la cancelaste.
.\wget\wget ftp://ftp.rediris.es/sites/releases.ubuntu.com/releases/kubuntu/intrepid/kubuntu-8.10-desktop-i386.iso
if not exist kubuntu-8.10-desktop-i386.iso goto downk
cls
echo       ---Kubuntu---
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:searchpl
if exist puppy-4.1.2-k2.6.25.16-seamonkey.iso goto pl else (
goto nopl
)
:pl
cls
echo       ---Puppy Linux---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Borrar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto delpl
if "%_ok%" == "2" goto menu
goto pl
:delpl
cls
echo                ---Puppy Linux---
echo Are you sure that you want to delete "Puppy Linux"?
echo Type YES or NO.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "SI" goto delfpl
if "%_ok%" == "NO" goto pl
goto delpl
:delfpl
cls
echo    ---Puppy Linux---
echo Borrando distribucion...
del puppy-4.1.2-k2.6.25.16-seamonkey.iso
cls
echo Distribucion borrada.
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:nopl
cls
echo        ---Puppy Linux---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Descargar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto downpl
if "%_ok%" == "2" goto menu
goto nopl
:downpl
cls
echo                   ---Puppy Linux---
echo Empezando la descarga. Pulsa Control-C para cancelar.
echo Si cancelas y vuelves a descargar, la descarga comenzara 
echo desde el momento que la cancelaste.
.\wget\wget http://diplro.ibiblio.org/pub/linux/diplributions/puppylinux/puppy-4.1.2-k2.6.25.16-seamonkey.iso
if not exist puppy-4.1.2-k2.6.25.16-seamonkey.iso goto downpl
cls
echo    ---Puppy Linux---
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:searchst
if exist slitaz-cooking.iso goto st else (
goto nost
)
:st
cls
echo         ---SliTaz---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Borrar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto delst
if "%_ok%" == "2" goto menu
goto st
:delst
cls
echo                ---SliTaz---
echo Are you sure that you want to delete "SliTaz"?
echo Type YES or NO.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "SI" goto delfst
if "%_ok%" == "NO" goto st
goto delst
:delfst
cls
echo    ---SliTaz---
echo Borrando distribucion...
del slitaz-cooking.iso
cls
echo Distribucion borrada.
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:nost
cls
echo        ---SliTaz---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Descargar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto downst
if "%_ok%" == "2" goto menu
goto nost
:downst
cls
echo                   ---SliTaz---
echo Empezando la descarga. Pulsa Control-C para cancelar.
echo Si cancelas y vuelves a descargar, la descarga comenzara 
echo desde el momento que la cancelaste.
.\wget\wget http://mirror.slitaz.org/iso/cooking/slitaz-cooking.iso
if not exist slitaz-cooking.iso goto downst
cls
echo    ---SliTaz---
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:searchhos
if exist haiku-alpha.image goto hos else (
LaunchHOS.bat
)
:hos
cls
echo         ---Haiku OS---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Borrar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto delhos
if "%_ok%" == "2" goto menu
goto hos
:delhos
cls
echo                ---Haiku OS---
echo Are you sure that you want to delete "Haiku OS"?
echo Type YES or NO.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "SI" goto delfhos
if "%_ok%" == "NO" goto hos
goto delhos
:delfhos
cls
echo    ---Haiku OS---
echo Borrando distribucion...
del haiku-alpha.image
cls
echo Distribucion borrada.
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:searchgx
if exist geexbox-1.2.1-en.i386.glibc.iso goto gx else (
goto nogx
)
:gx
cls
echo       ---GeeXbox---
echo Selecciona la opcion deseada:
echo.
echo.
echo      1) Borrar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto delgx
if "%_ok%" == "2" goto menu
goto gx
:delgx
cls
echo                ---GeeXboX---
echo Are you sure that you want to delete "GeeXboX"?
echo Type YES or NO.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "SI" goto delfgx
if "%_ok%" == "NO" goto gx
goto delgx
:delfgx
cls
echo    ---GeeXboX---
echo Borrando distribucion...
del geexbox-1.2.1-en.i386.glibc.iso
cls
echo Distribucion borrada.
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu
:nogx
cls
echo        ---GeeXboX---
echo Select the option you want to do:
echo.
echo.
echo      1) Descargar
echo      2) Volver
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto downgx
if "%_ok%" == "2" goto menu
goto nogx
:downgx
cls
echo                   ---GeeXboX---
echo Empezando la descarga. Pulsa Control-C para cancelar.
echo Si cancelas y vuelves a descargar, la descarga comenzara 
echo desde el momento que la cancelaste.
.\wget\wget http://www1.geexbox.org/releases/1.2.1/geexbox-1.2.1-en.i386.glibc.iso
if not exist geexbox-1.2.1-en.i386.glibc.iso goto downpl
cls
echo    ---GeeXboX---
echo Distribucion descargada!
echo Pulsa una tecla para volver al menu.
pause > nul
goto menu