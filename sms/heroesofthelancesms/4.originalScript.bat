@echo off
set T_FILENAME="Heroes of the Lance (U) [!].sms"
set SCRIPTNAME="heroesofthelancesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
