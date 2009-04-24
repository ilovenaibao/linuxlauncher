@echo off
cls
title Linux Launcher 1.0.0 BETA - Opciones - Linux Launcher Maker
:menu
cls
echo Selecciona una opcion:
echo.
echo.
echo      1) Ver Leeme
echo      2) Abrir consola para ejecutar LLM
echo      3) Volver
echo.
set _ok=
set /p _ok=Escoje una opcion: 
if "%_ok%" == "1" goto readme
if "%_ok%" == "2" goto terminal
if "%_ok%" == "3" option.bat
goto menu
:readme
cls
type llm_readme.txt
echo.
echo Pulsa una tecla para volver.
pause > nul
goto menu
:terminal
cls
start