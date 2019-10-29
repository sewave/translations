@echo off
set T_FILENAME="Pro Wrestling (UE) [!].sms"
set SCRIPTNAME="prowrestlingsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
