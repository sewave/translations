@echo off
set T_FILENAME="TR_Ikari Warriors II - Victory Road (U) [!].nes"
set S_FILENAME="Ikari Warriors II - Victory Road (U) [!].nes"
set SCRIPTNAME="ikariwarriorsiivictoryroadnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
