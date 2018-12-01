@echo off
set T_FILENAME="Alex Kidd - BMX Trial (J) [!].sms"
set SCRIPTNAME="alexkiddbmxtrialsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
