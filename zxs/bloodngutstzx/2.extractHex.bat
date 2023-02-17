@echo off
set T_FILENAME="TR_Blood 'n' Guts.tzx"
set SCRIPTNAME="bloodngutstzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6EA2:20
pause
