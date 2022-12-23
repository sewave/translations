@echo off
set T_FILENAME="TR_Soul Of A Robot.tzx"
set SCRIPTNAME="soulofarobottzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3A60:40
pause
