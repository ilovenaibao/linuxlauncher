@echo off
if %1 == on goto on
if %1 == off goto off
:on
set _localtime=on
echo El tiempo local se sincronizara con el emulador.
echo.
goto end
:off
set _localtime=off
echo El tiempo local no se sincronizara con el emulador.
echo.
goto end
:end

