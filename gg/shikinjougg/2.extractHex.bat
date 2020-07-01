@echo off
set T_FILENAME="TR_Shikinjou (J).gg"
set SCRIPTNAME="shikinjougg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
