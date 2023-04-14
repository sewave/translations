@echo off
set T_FILENAME="TR_One Man And His Droid.tzx"
set SCRIPTNAME="onemanandhisdroidtzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2339:80
pause
