@echo off
set T_FILENAME="Speedball 2 (Europe).sms"
set SCRIPTNAME="speedball2sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
