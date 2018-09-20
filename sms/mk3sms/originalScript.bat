@echo off 
set T_FILENAME="Mortal Kombat 3 (E) [!].sms"
set SCRIPTNAME="mk3sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
