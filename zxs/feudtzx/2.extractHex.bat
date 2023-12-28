@echo off
set T_FILENAME="TR_Feud.tzx"
set SCRIPTNAME="feudtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B195:28
pause
