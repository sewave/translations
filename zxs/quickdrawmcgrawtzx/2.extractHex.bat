@echo off
set T_FILENAME="TR_Quick Draw McGraw.tzx"
set SCRIPTNAME="quickdrawmcgrawtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3139:30
pause
