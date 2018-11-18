@echo off
set T_FILENAME="TR_Alex Kidd in Miracle World 2.sms"
set S_FILENAME="Alex Kidd in Miracle World 2.sms"
set SCRIPTNAME="alexkiddinmiracleworld2sms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
