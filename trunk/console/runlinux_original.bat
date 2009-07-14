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
if not %_floppy% == blank goto noLC_noK_noF_y
if %_floppy% == blank goto noLC_noK_noF_n
:noLC_noK_F
if not %_floppy% == blank goto noLC_noK_F_y
if %_floppy% == blank goto noLC_noK_F_n
:noLC_K_noF
if not %_floppy% == blank goto noLC_K_noF_y
if %_floppy% == blank goto noLC_K_noF_n
:noLC_K_F
if not %_floppy% == blank goto noLC_K_F_y
if %_floppy% == blank goto noLC_K_F_n
:LC_noK_noF
if not %_floppy% == blank goto LC_noK_noF_y
if %_floppy% == blank goto LC_noK_noF_n
:LC_K_noF
if not %_floppy% == blank goto LC_K_noF_y
if %_floppy% == blank goto LC_K_noF_n
:LC_K_F
if not %_floppy% == blank goto LC_K_F_y
if %_floppy% == blank goto LC_K_F_n
:LC_noK_F
if not %_floppy% == blank goto LC_noK_F_y
if %_floppy% == blank goto LC_noK_F_n
:noLC_noK_noF_y
if not %_iso% == blank goto noLC_noK_noF_yy
if %_iso% == blank goto noLC_noK_noF_yn
:noLC_noK_noF_n
if not %_iso% == blank goto noLC_noK_noF_ny
if %_iso% == blank goto noLC_noK_noF_nn
:noLC_noK_F_y
if not %_iso% == blank goto noLC_noK_F_yy
if %_iso% == blank goto noLC_noK_F_yn
:noLC_noK_F_n
if not %_iso% == blank goto noLC_noK_F_ny
if %_iso% == blank goto noLC_noK_F_nn
:noLC_K_noF_y
if not %_iso% == blank goto noLC_K_noF_yy
if %_iso% == blank goto noLC_noK_F_yn
:noLC_K_noF_n
if not %_iso% == blank goto noLC_K_noF_ny
if %_iso% == blank goto noLC_K_noF_nn
:noLC_K_F_y
if not %_iso% == blank goto noLC_K_F_yy
if %_iso% == blank goto noLC_K_F_yn
:noLC_K_F_n
if not %_iso% == blank goto noLC_K_F_ny
if %_iso% == blank goto noLC_K_F_nn
:LC_noK_noF_y
if not %_iso% == blank goto LC_noK_noF_yy
if %_iso% == blank goto LC_noK_noF_yn
:LC_noK_noF_n
if not %_iso% == blank goto LC_noK_noF_ny
if %_iso% == blank goto LC_noK_noF_nn
:LC_K_noF_y
if not %_iso% == blank goto LC_K_noF_yy
if %_iso% == blank goto LC_K_noF_yn
:LC_K_noF_n
if not %_iso% == blank goto LC_K_noF_ny
if %_iso% == blank goto LC_K_noF_nn
:LC_K_F_y
if not %_iso% == blank goto LC_K_F_yy
if %_iso% == blank goto LC_K_F_yn
:LC_K_F_n
if not %_iso% == blank goto LC_K_F_ny
if %_iso% == blank goto LC_K_F_nn
:LC_noK_F_y
if not %_iso% == blank goto LC_noK_F_yy
if %_iso% == blank goto LC_noK_F_yn
:LC_noK_F_n
if not %_iso% == blank goto LC_noK_F_ny
if %_iso% == blank goto LC_noK_F_nn
:noLC_noK_noF_yy
if not %_hda% == blank goto noLC_noK_F_yyy
if %_hda% == blank goto noLC_noK_F_yyn
:noLC_noK_noF_ny
if not %_hda% == blank goto noLC_noK_F_nyy
if %_hda% == blank goto noLC_noK_F_nyn
:noLC_noK_noF_yn
if not %_hda% == blank goto noLC_noK_F_yny
if %_hda% == blank goto noLC_noK_F_ynn
:noLC_noK_F_yy
if not %_hda% == blank goto noLC_noK_noF_yyy
if %_hda% == blank goto noLC_noK_noF_yyn
:noLC_noK_F_ny
if not %_hda% == blank goto noLC_noK_noF_nyy
if %_hda% == blank goto noLC_noK_noF_nyn
:noLC_noK_F_yn
if not %_hda% == blank goto noLC_noK_F_yny
if %_hda% == blank goto noLC_noK_F_ynn
:noLC_noK_F_nn
if not %_hda% == blank goto noLC_noK_F_nny
if %_hda% == blank goto noLC_noK_F_nnn
:noLC_K_noF_yy
if not %_hda% == blank goto noLC_K_noF_yyy
if %_hda% == blank goto noLC_K_noF_yyn
:noLC_K_noF_ny
if not %_hda% == blank goto noLC_K_noF_nyy
if %_hda% == blank goto noLC_K_noF_nyn
:noLC_K_noF_yn
if not %_hda% == blank goto noLC_K_noF_yny
if %_hda% == blank goto noLC_K_noF_ynn
:noLC_K_noF_nn
if not %_hda% == blank goto noLC_K_noF_nny
if %_hda% == blank goto noLC_K_noF_nnn
:noLC_K_F_yy
if not %_hda% == blank goto noLC_K_F_yyy
if %_hda% == blank goto noLC_K_F_yyn
:noLC_K_F_ny
if not %_hda% == blank goto noLC_K_F_nyy
if %_hda% == blank goto noLC_K_F_nyn
:noLC_K_F_yn
if not %_hda% == blank goto noLC_K_F_yny
if %_hda% == blank goto noLC_K_F_ynn
:noLC_K_F_nn
if not %_hda% == blank goto noLC_K_F_nny
if %_hda% == blank goto noLC_K_F_nnn
:LC_noK_noF_yy
if not %_hda% == blank goto LC_noK_noF_yyy
if %_hda% == blank goto LC_noK_noF_yyn
:LC_noK_noF_ny
if not %_hda% == blank goto LC_noK_noF_nyy
if %_hda% == blank goto LC_noK_noF_nyn
:LC_noK_noF_yn
if not %_hda% == blank goto LC_noK_noF_yny
if %_hda% == blank goto LC_noK_noF_ynn
:LC_noK_noF_nn
if not %_hda% == blank goto LC_noK_noF_nny
if %_hda% == blank goto LC_noK_noF_nnn
:LC_K_noF_yy
if not %_hda% == blank goto LC_K_noF_yyy
if %_hda% == blank goto LC_K_noF_yyn
:LC_K_noF_ny
if not %_hda% == blank goto LC_K_noF_nyy
if %_hda% == blank goto LC_K_noF_nyn
:LC_K_noF_yn
if not %_hda% == blank goto LC_K_noF_yny
if %_hda% == blank goto LC_K_noF_ynn
:LC_K_noF_nn
if not %_hda% == blank goto LC_K_noF_nny
if %_hda% == blank goto LC_K_noF_nnn
:LC_K_F_yy
if not %_hda% == blank goto LC_K_F_yyy
if %_hda% == blank goto LC_K_F_yyn
:LC_K_F_ny
if not %_hda% == blank goto LC_K_F_nyy
if %_hda% == blank goto LC_K_F_nyn
:LC_K_F_yn
if not %_hda% == blank goto LC_K_F_yny
if %_hda% == blank goto LC_K_F_ynn
:LC_K_F_nn
if not %_hda% == blank goto LC_K_F_nny
if %_hda% == blank goto LC_K_F_nnn
:LC_noK_F_yy
if not %_hda% == blank goto LC_noK_F_yyy
if %_hda% == blank goto LC_noK_F_yyn
:LC_noK_F_ny
if not %_hda% == blank goto LC_noK_F_nyy
if %_hda% == blank goto LC_noK_F_nyn
:LC_noK_F_yn
if not %_hda% == blank goto LC_noK_F_yny
if %_hda% == blank goto LC_noK_F_ynn
:LC_noK_F_nn
if not %_hda% == blank goto LC_noK_F_nny
if %_hda% == blank goto LC_noK_F_nnn
:noLC_noK_noF_yyy
start .\qemu\qemu -L .\qemu -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:noLC_noK_noF_nyy
start .\qemu\qemu -L .\qemu -std-vga -soundhw all -m %_memory% -hda hda.img -cdrom %_iso% -boot %_boot%
exit
:noLC_noK_noF_yny
start .\qemu\qemu -L .\qemu -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -boot %_boot%
exit
:noLC_noK_noF_yyn
start .\qemu\qemu -L .\qemu -std-vga -soundhw all -m %_memory% -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:noLC_noK_noF_ynn
start .\qemu\qemu -L .\qemu -std-vga -soundhw all -m %_memory% -fda %_floppy% -boot %_boot%
exit
:noLC_noK_noF_nyn
start .\qemu\qemu -L .\qemu -std-vga -soundhw all -m %_memory% -cdrom %_iso% -boot %_boot%
exit
:noLC_noK_noF_nny
start .\qemu\qemu -L .\qemu -std-vga -soundhw all -m %_memory% -hda hda.img -boot %_boot%
exit
:noLC_noK_noF_nnn
cls
echo No hay ninguna unidad disponible.
echo Por favor, configura las unidades de nuevo.
echo.
echo Pulsa una tecla para volver a configurar.
pause > nul
_start.bat
:noLC_noK_F_yyy
start .\qemu\qemu -L .\qemu -full-screen -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:noLC_noK_F_nyy
start .\qemu\qemu -L .\qemu -full-screen -std-vga -soundhw all -m %_memory% -hda hda.img -cdrom %_iso% -boot %_boot%
exit
:noLC_noK_F_yny
start .\qemu\qemu -L .\qemu -full-screen -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -boot %_boot%
exit
:noLC_noK_F_yyn
start .\qemu\qemu -L .\qemu -full-screen -std-vga -soundhw all -m %_memory% -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:noLC_noK_F_ynn
start .\qemu\qemu -L .\qemu -full-screen -std-vga -soundhw all -m %_memory% -fda %_floppy% -boot %_boot%
exit
:noLC_noK_F_nyn
start .\qemu\qemu -L .\qemu -full-screen -std-vga -soundhw all -m %_memory% -cdrom %_iso% -boot %_boot%
exit
:noLC_noK_F_nny
start .\qemu\qemu -L .\qemu -full-screen -std-vga -soundhw all -m %_memory% -hda hda.img -boot %_boot%
exit
:noLC_noK_F_nnn
cls
echo No hay ninguna unidad disponible.
echo Por favor, configura las unidades de nuevo.
echo.
echo Pulsa una tecla para volver a configurar.
pause > nul
_start.bat
:noLC_K_noF_yyy
start .\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:noLC_K_noF_nyy
start .\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -cdrom %_iso% -boot %_boot%
exit
:noLC_K_noF_yny
start .\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -boot %_boot%
exit
:noLC_K_noF_yyn
start .\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -soundhw all -m %_memory% -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:noLC_K_noF_ynn
start .\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -soundhw all -m %_memory% -fda %_floppy% -boot %_boot%
exit
:noLC_K_noF_nyn
start .\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -soundhw all -m %_memory% -cdrom %_iso% -boot %_boot%
exit
:noLC_K_noF_nny
start .\qemu\qemu -L .\qemu -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -boot %_boot%
exit
:noLC_K_noF_nnn
cls
echo No hay ninguna unidad disponible.
echo Por favor, configura las unidades de nuevo.
echo.
echo Pulsa una tecla para volver a configurar.
pause > nul
_start.bat
:noLC_K_F_yyy
start .\qemu\qemu -L .\qemu -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:noLC_K_F_nyy
start .\qemu\qemu -L .\qemu -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -cdrom %_iso% -boot %_boot%
exit
:noLC_K_F_yny
start .\qemu\qemu -L .\qemu -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -boot %_boot%
exit
:noLC_K_F_yyn
start .\qemu\qemu -L .\qemu -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:noLC_K_F_ynn
start .\qemu\qemu -L .\qemu -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -fda %_floppy% -boot %_boot%
exit
:noLC_K_F_nyn
start .\qemu\qemu -L .\qemu -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -cdrom %_iso% -boot %_boot%
exit
:noLC_K_F_nny
start .\qemu\qemu -L .\qemu -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -boot %_boot%
exit
:noLC_K_F_nnn
cls
echo No hay ninguna unidad disponible.
echo Por favor, configura las unidades de nuevo.
echo.
echo Pulsa una tecla para volver a configurar.
pause > nul
_start.bat
:LC_noK_noF_yyy
start .\qemu\qemu -L .\qemu -localtime -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:LC_noK_noF_nyy
start .\qemu\qemu -L .\qemu -localtime -std-vga -soundhw all -m %_memory% -hda hda.img -cdrom %_iso% -boot %_boot%
exit
:LC_noK_noF_yny
start .\qemu\qemu -L .\qemu -localtime -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -boot %_boot%
exit
:LC_noK_noF_yyn
start .\qemu\qemu -L .\qemu -localtime -std-vga -soundhw all -m %_memory% -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:LC_noK_noF_ynn
start .\qemu\qemu -L .\qemu -localtime -std-vga -soundhw all -m %_memory% -fda %_floppy% -boot %_boot%
exit
:LC_noK_noF_nyn
start .\qemu\qemu -L .\qemu -localtime -std-vga -soundhw all -m %_memory% -cdrom %_iso% -boot %_boot%
exit
:LC_noK_noF_nny
start .\qemu\qemu -L .\qemu -localtime -std-vga -soundhw all -m %_memory% -hda hda.img -boot %_boot%
exit
:LC_noK_noF_nnn
cls
echo No hay ninguna unidad disponible.
echo Por favor, configura las unidades de nuevo.
echo.
echo Pulsa una tecla para volver a configurar.
pause > nul
_start.bat
:LC_K_noF_yyy
start .\qemu\qemu -L .\qemu -localtime -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:LC_K_noF_nyy
start .\qemu\qemu -L .\qemu -localtime -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -cdrom %_iso% -boot %_boot%
exit
:LC_K_noF_yny
start .\qemu\qemu -L .\qemu -localtime -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -boot %_boot%
exit
:LC_K_noF_yyn
start .\qemu\qemu -L .\qemu -localtime -kernel-kqemu -std-vga -soundhw all -m %_memory% -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:LC_K_noF_ynn
start .\qemu\qemu -L .\qemu -localtime -kernel-kqemu -std-vga -soundhw all -m %_memory% -fda %_floppy% -boot %_boot%
exit
:LC_K_noF_nyn
start .\qemu\qemu -L .\qemu -localtime -kernel-kqemu -std-vga -soundhw all -m %_memory% -cdrom %_iso% -boot %_boot%
exit
:LC_K_noF_nny
start .\qemu\qemu -L .\qemu -localtime -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -boot %_boot%
exit
:LC_K_noF_nnn
cls
echo No hay ninguna unidad disponible.
echo Por favor, configura las unidades de nuevo.
echo.
echo Pulsa una tecla para volver a configurar.
pause > nul
_start.bat
:LC_K_F_yyy
start .\qemu\qemu -L .\qemu -localtime  -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:LC_K_F_nyy
start .\qemu\qemu -L .\qemu -localtime  -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -cdrom %_iso% -boot %_boot%
exit
:LC_K_F_yny
start .\qemu\qemu -L .\qemu -localtime  -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -fda %_floppy% -boot %_boot%
exit
:LC_K_F_yyn
start .\qemu\qemu -L .\qemu -localtime  -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -fda %_floppy% -cdrom %_iso% -boot %_boot%
exit
:LC_K_F_ynn
start .\qemu\qemu -L .\qemu -localtime  -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -fda %_floppy% -boot %_boot%
exit
:LC_K_F_nyn
start .\qemu\qemu -L .\qemu -localtime  -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -cdrom %_iso% -boot %_boot%
exit
:LC_K_F_nny
start .\qemu\qemu -L .\qemu -localtime  -full-screen -kernel-kqemu -std-vga -soundhw all -m %_memory% -hda hda.img -boot %_boot%
exit
:LC_K_F_nnn
cls
echo No hay ninguna unidad disponible.
echo Por favor, configura las unidades de nuevo.
echo.
echo Pulsa una tecla para volver a configurar.
pause > nul
_start.bat


:error0
cls
echo No has configurado la opcion de memoria o arranque.
echo Por favor, configuralos de nuevo.
echo.
echo Pulsa una tecla para volver a configurar.
pause > nul
_start.bat
:error1
cls
echo Has configurado el arranque de una unidad y dicha unidad
echo no esta activada.
echo Por favor, configura el arranque o la unidad de nuevo.
echo.
echo Pulsa una tecla para volver a configurar.
pause > nul
_start.bat