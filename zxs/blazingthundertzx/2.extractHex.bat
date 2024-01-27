@echo off
set T_FILENAME="TR_Blazing Thunder.tzx"
set SCRIPTNAME="blazingthundertzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6599:10
pause
