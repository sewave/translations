@echo off
set T_FILENAME="One Man And His Droid.tzx"
set SCRIPTNAME="onemanandhisdroidtzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
