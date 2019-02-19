@echo off
set T_FILENAME="Columns (UE) [!].sms"
set SCRIPTNAME="columnssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
