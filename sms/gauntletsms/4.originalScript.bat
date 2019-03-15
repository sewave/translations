@echo off
set T_FILENAME="Gauntlet (UE) [!].sms"
set SCRIPTNAME="gauntletsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
