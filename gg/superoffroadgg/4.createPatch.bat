@echo off
set T_FILENAME="TR_Super Off-Road (U).gg"
set S_FILENAME="Super Off-Road (U).gg"
set SCRIPTNAME="superoffroadgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
