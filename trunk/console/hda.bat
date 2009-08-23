@echo off
if %1 == on goto on
if %1 == off goto off
:on
set _hda=on
echo El disco duro sera habilitado.
goto end
:off
set _hda=off
echo El disco duro sera deshabilitado.
goto end
:end
