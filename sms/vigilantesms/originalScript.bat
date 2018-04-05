@echo off 
set T_FILENAME="Vigilante (UE) [!].sms"
set SCRIPTNAME="vigilantesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
