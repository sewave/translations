@echo off
set T_FILENAME="Shinobi (UE) [!].sms"
set SCRIPTNAME="shinobisms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
