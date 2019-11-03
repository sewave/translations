@echo off
set T_FILENAME="TR_Zillion (UE) (V1.1) [!].sms"
set SCRIPTNAME="zillionsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
