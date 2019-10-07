@echo off
set T_FILENAME="TR_Side Pocket (U).gg"
set SCRIPTNAME="sidepocketgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
