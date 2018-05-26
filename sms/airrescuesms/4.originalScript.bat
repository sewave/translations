@echo off
set T_FILENAME="Air Rescue (E) [!].sms"
set SCRIPTNAME="airrescuesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
