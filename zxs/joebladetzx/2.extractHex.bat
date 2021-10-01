@echo off
set T_FILENAME="TR_Joe Blade.tzx"
set SCRIPTNAME="joebladetzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
