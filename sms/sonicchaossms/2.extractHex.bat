@echo off
set T_FILENAME="TR_Sonic Chaos (E) [!].sms"
set SCRIPTNAME="sonicchaossms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
