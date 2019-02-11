@echo off
set T_FILENAME="Rainbow Islands (E) [!].sms"
set SCRIPTNAME="rainbowislandssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
