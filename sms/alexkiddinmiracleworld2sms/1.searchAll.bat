@echo off
set T_FILENAME="Alex Kidd in Miracle World 2.sms"
set SCRIPTNAME="alexkiddinmiracleworld2sms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
