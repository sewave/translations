@echo off
set T_FILENAME="TR_Battle Field.tzx"
set SCRIPTNAME="battlefieldtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1EE7:18
pause
