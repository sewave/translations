@echo off 
set T_FILENAME="Masters of Combat (E) [!].sms"
set SCRIPTNAME="mastcom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
