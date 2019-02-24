@echo off
set T_FILENAME="TR_Battle Chess (U) [!].nes"
set S_FILENAME="Battle Chess (U) [!].nes"
set SCRIPTNAME="battlechessnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
