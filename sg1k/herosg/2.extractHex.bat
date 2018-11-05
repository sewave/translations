@echo off
set T_FILENAME="TR_H.E.R.O. (SG-1000).sg"
set SCRIPTNAME="herosg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
