@echo off
set T_FILENAME="TR_Alex Kidd - BMX Trial (J) [!].sms"
set SCRIPTNAME="alexkiddbmxtrialsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
