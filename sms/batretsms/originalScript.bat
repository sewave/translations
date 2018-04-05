@echo off 
set T_FILENAME="Batman Returns (UE) [!].sms"
set SCRIPTNAME="batretsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off 
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext  %SCRIPTNAME%Alt.off
pause 
