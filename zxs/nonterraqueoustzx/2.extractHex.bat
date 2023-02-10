@echo off
set T_FILENAME="TR_Nonterraqueous.tzx"
set SCRIPTNAME="nonterraqueoustzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 31B9:40
pause
