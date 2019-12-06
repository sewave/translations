@echo off
set T_FILENAME="TR_Bomb Jack (U).gb"
set SCRIPTNAME="bombjackgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
