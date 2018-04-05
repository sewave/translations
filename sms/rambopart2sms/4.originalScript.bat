@echo off
set T_FILENAME="Rambo - First Blood Part 2 (U) [!].sms"
set SCRIPTNAME="rambopart2sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
