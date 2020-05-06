@echo off
set T_FILENAME="Global Defense (UE) [!].sms"
set SCRIPTNAME="globaldefensesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
