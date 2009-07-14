@echo off
if %1 == on goto on
if %1 == off goto off
:on
set _kqemu=on
echo KQemu sera habilitado.
echo.
goto end
:off
set _kqemu=off
echo KQemu sera deshabilitado.
echo.
goto end
:end

