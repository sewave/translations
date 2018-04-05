@echo off 
set T_FILENAME="Mortal Kombat 2 (E) [!].sms"
set SCRIPTNAME="mk2sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
