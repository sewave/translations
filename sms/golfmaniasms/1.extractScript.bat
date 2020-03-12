@echo off
set T_FILENAME="Golf Mania (UE) [!].sms"
set SCRIPTNAME="golfmaniasms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
