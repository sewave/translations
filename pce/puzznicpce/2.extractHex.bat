@echo off
set T_FILENAME="TR_Puzznic (Japan).pce"
set SCRIPTNAME="puzznicpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
