@echo off
set T_FILENAME="Ms. Pac-man (E) [!].sms"
set SCRIPTNAME="mspacmansms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
