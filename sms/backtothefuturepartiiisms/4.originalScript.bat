@echo off
set T_FILENAME="Back to the Future Part III (UE) [!].sms"
set SCRIPTNAME="backtothefuturepartiiisms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
