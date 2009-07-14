@echo off
cls
:startcheck
echo Comprobando opciones...
if %_memory% == blank goto error0
if %_boot% == blank goto error0
if %_floppy% == blank set _floppy=off
if %_iso% == blank set _iso=off
if %_hda% == blank set _hda=off
if %_localtime% == blank set _localtime=off
if %_kqemu% == blank set _kqemu=off
if %_fullscreen% == blank set _fullscreen=off
echo.
echo comprobando que las opciones de arranque sean validas...
if %_boot% == a goto checkboota
if %_boot% == c goto checkbootc
if %_boot% == d goto checkbootd
:checkboota
if %_floppy% == blank goto error1
if %_floppy% == off goto error1
goto run
:checkbootc
if %_hda% == blank goto error1
if %_hda% == off goto error1
goto run
:checkbootd
if %_iso% == blank goto error1
if %_iso% == off goto error1
goto run
:run
echo.
echo Configurando ultimos parametros y iniciando el emulador...
cd..
if %_localtime% == off goto noLC
if %_localtime% == on goto LC
:noLC
if %_kqemu% == off goto noLC_noK
if %_kqemu% == on goto noLC_K
:LC
if %_kqemu% == off goto LC_noK
if %_kqemu% == on goto LC_K
:noLC_noK
if %_fullscreen% == off goto noLC_noK_noF
if %_fullscreen% == on goto noLC_noK_F
:noLC_k
if %_fullscreen% == off goto noLC_K_noF
if %_fullscreen% == on goto noLC_K_F
:LC_noK
if %_fullscreen% == off goto LC_noK_noF
if %_fullscreen% == on goto LC_noK_F
:LC_K
if %_fullscreen% == off goto LC_K_noF
if %_fullscreen% == on goto LC_K_F
:noLC_noK_noF
.\qemu\qemu -L .\qemu -std-vga -soundhw all -m %_memory% -cdrom "%_iso%" -hda hda.img -boot %_boot%
pause
:noLC_noK_F
.\qemu\qemu -L .\qemu -std-vga -full-screen -soundhw all -m %_memory% -cdrom "%_iso%" -hda hda.img -boot %_boot%
pause
:noLC_K_noF
.\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -soundhw all -m %_memory% -cdrom "%_iso%" -hda hda.img -boot %_boot%
pause
:noLC_K_F
.\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -full-screen -soundhw all -m %_memory% -cdrom "%_iso%" -hda hda.img -boot %_boot%
pause
:LC_noK_noF
.\qemu\qemu -L .\qemu -std-vga -localtime -soundhw all -m %_memory% -cdrom "%_iso%" -hda hda.img -boot %_boot%
pause
:LC_K_noF
.\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -localtime -soundhw all -m %_memory% -cdrom "%_iso%" -hda hda.img -boot %_boot%
pause
:LC_K_F
.\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -full-screen -localtime -soundhw all -m %_memory% -cdrom "%_iso%" -hda hda.img -boot %_boot%
pause
:LC_noK_F
.\qemu\qemu -L .\qemu -std-vga -localtime -full-screen -soundhw all -m %_memory% -cdrom "%_iso%" -hda hda.img -boot %_boot%
pause