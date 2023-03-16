@echo off
set T_FILENAME="TR_Disco Dan.tzx"
set SCRIPTNAME="discodantzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 441E:48
pause
