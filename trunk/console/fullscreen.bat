@echo off
if %1 == on goto on
if %1 == off goto off
:on
set _fullscreen=on
echo Pantalla completa sera habilitada.
echo.
goto end
:off
set _fullscreen=off
echo Pantalla completa sera deshabilitada.
echo.
goto end
:end

