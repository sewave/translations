@echo off
set T_FILENAME="TR_GP Rider (EB) [!].sms"
set SCRIPTNAME="gpridersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
