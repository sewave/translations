@echo off
set T_FILENAME="TR_Cloud Master (UE) [!].sms"
set SCRIPTNAME="cloudmastersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 77A9:40
pause
