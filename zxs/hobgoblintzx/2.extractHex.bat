@echo off
set T_FILENAME="TR_Hobgoblin.tzx"
set SCRIPTNAME="hobgoblintzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
