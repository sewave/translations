@echo off
set T_FILENAME="Power Strike (UE) [!].sms"
set SCRIPTNAME="powerstrikesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
