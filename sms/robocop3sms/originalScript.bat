@echo off 
set T_FILENAME="Robocop 3 (E) [!].sms"
set SCRIPTNAME="robocop3sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
