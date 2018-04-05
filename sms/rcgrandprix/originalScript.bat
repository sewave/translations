@echo off 
set T_FILENAME="R.C. Grand Prix (UE) [!].sms"
set SCRIPTNAME="rcgrandprix"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
