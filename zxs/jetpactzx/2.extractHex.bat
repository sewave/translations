@echo off
set T_FILENAME="TR_Jetpac (1983)(Ultimate).tzx"
set SCRIPTNAME="jetpactzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
