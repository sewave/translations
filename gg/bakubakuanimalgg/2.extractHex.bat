@echo off
set T_FILENAME="TR_Baku Baku Animal (U).gg"
set SCRIPTNAME="bakubakuanimalgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
