@echo off
set T_FILENAME="TR_BATTY.TZX"
set SCRIPTNAME="battytzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
