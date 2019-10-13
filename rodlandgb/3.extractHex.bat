@echo off
set T_FILENAME="TR_Rodland (U).gb"
set SCRIPTNAME="rodlandgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
