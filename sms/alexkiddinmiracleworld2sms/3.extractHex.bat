@echo off
set T_FILENAME="TR_Alex Kidd in Miracle World 2.sms"
set SCRIPTNAME="alexkiddinmiracleworld2sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
