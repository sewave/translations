@echo off
set T_FILENAME="TR_Wimbledon II (Europe).sms"
set SCRIPTNAME="wimbledoniisms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 17184:200,2200D:20
pause
