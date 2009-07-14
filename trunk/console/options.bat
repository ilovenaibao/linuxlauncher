@echo off
cls
if %_memory% == blank echo Memoria RAM usada: No configurado
if not %_memory% == blank echo Memoria RAM usada: %_memory% MB
if %_iso% == blank echo Ruta de la ISO: No configurado
if not %_iso% == blank echo Ruta de la ISO: %_iso%
if %_floppy% == blank echo Ruta del disquete: No configurado
if not %_floppy% == blank echo Ruta del disquete: %_floppy%
if %_hda% == blank echo Disco duro: No configurado
if %_hda% == on echo Disco duro: habilitado
if %_hda% == off echo Disco duro: deshabilitado
if %_fullscreen% == blank echo Pantalla completa: No configurado
if %_fullscreen% == on echo Pantalla completa: habilitada
if %_fullscreen% == off echo Pantalla completa: deshabilitada
if %_kqemu% == blank echo KQemu: No configurado
if %_kqemu% == on echo KQemu: habilitado
if %_kqemu% == off echo KQemu: deshabilitado
if %_localtime% == blank echo Sincronizar tiempo: No configurado
if %_localtime% == on echo Sincronizar tiempo: habilitado
if %_localtime% == off echo Sincronizar tiempo: deshabilitado
if %_boot% == blank echo Arranque: No configurado
if %_boot% == a echo Arranque: Disquetera
if %_boot% == b echo Arranque: Disco duro
if %_boot% == c echo Arranque: Disco
echo.
