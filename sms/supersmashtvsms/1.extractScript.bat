@echo off
set T_FILENAME="Super Smash TV (E) [!].sms"
set SCRIPTNAME="supersmashtvsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
