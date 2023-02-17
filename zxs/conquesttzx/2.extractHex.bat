@echo off
set T_FILENAME="TR_Con-Quest.tzx"
set SCRIPTNAME="conquesttzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
