@echo off
set T_FILENAME="Black Belt (UE) [!].sms"
set SCRIPTNAME="blackbeltsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
