@echo off
set T_FILENAME="TR_Pro Wrestling (UE) [!].sms"
set SCRIPTNAME="prowrestlingsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
