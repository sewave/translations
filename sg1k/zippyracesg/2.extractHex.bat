@echo off
set T_FILENAME="TR_Zippy Race (SG-1000) [!].sg"
set SCRIPTNAME="zippyracesg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6150:8,6340:18,6BA0:20
pause
