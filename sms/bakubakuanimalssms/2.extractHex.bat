@echo off
set T_FILENAME="TR_Baku Baku Animals (B) [!].sms"
set SCRIPTNAME="bakubakuanimalssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
