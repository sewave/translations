@echo off 
set T_FILENAME="Bomber Raid (UE) [!].sms"
set SCRIPTNAME="bomberraid"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
pause 
