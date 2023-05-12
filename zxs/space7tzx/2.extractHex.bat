@echo off
set T_FILENAME="TR_SPACE7.TZX"
set SCRIPTNAME="space7tzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
