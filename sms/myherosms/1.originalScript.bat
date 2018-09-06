@echo off
set T_FILENAME="My Hero (UE) [!].sms"
set SCRIPTNAME="myherosms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
