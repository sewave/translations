@echo off
set T_FILENAME="TR_Altered Beast (UE) [!].sms"
set SCRIPTNAME="alteredbeastsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
