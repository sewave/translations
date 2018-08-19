@echo off
set T_FILENAME="TR_Running Battle (E) [!].sms"
set SCRIPTNAME="runningbattlesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 126AA:200,29F6F:A00
pause
