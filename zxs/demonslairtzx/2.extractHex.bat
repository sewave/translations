@echo off
set T_FILENAME="TR_Demonslair.tzx"
set SCRIPTNAME="demonslairtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
