@echo off
set T_FILENAME="Dragon - The Bruce Lee Story (E) [!].sms"
set SCRIPTNAME="dragonbrucesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
