@echo off
set T_FILENAME="TR_Rockman.tzx"
set SCRIPTNAME="rockmantzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 245F:18
pause
