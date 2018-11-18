@echo off
set T_FILENAME="Pac-Mania (E) [!].sms"
set SCRIPTNAME="pacmaniasms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
