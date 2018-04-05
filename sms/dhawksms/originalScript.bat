@echo off 
set T_FILENAME="Double Hawk (E) [!].sms"
set SCRIPTNAME="dhawksms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
