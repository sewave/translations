@echo off
set T_FILENAME="Alex Kidd in Miracle World 2.sms"
set SCRIPTNAME="alexkiddinmiracleworld2sms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
