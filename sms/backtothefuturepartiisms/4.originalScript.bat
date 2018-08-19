@echo off
set T_FILENAME="Back to the Future Part II (UE) [!].sms"
set SCRIPTNAME="backtothefuturepartiisms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
