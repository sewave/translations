@echo off
set T_FILENAME="TR_Buster Fight (J).gg"
set SCRIPTNAME="busterfightgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
