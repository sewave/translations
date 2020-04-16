@echo off
set T_FILENAME="World Cup Italia '90 (EB) [!].sms"
set SCRIPTNAME="worldcupitalia90sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
