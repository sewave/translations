@echo off
set T_FILENAME="GP Rider (EB) [!].sms"
set SCRIPTNAME="gpridersms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
