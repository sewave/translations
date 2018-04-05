@echo off 
set T_FILENAME="Mortal Kombat (E) [!].sms"
set SCRIPTNAME="mk1sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
