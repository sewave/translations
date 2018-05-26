@echo off
set T_FILENAME="TR_Air Rescue (E) [!].sms"
set SCRIPTNAME="airrescuesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex BDC6:200,B98E:60,BD6E:40
pause
