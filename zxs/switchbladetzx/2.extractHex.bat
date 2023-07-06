@echo off
set T_FILENAME="TR_Switch Blade.tzx"
set SCRIPTNAME="switchbladetzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
