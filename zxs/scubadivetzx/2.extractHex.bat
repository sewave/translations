@echo off
set T_FILENAME="TR_Scuba Dive.tzx"
set SCRIPTNAME="scubadivetzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
