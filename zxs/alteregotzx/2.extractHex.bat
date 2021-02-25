@echo off
set T_FILENAME="TR_Alter Ego.tzx"
set SCRIPTNAME="alteregotzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
