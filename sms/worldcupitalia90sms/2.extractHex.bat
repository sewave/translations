@echo off
set T_FILENAME="TR_World Cup Italia '90 (EB) [!].sms"
set SCRIPTNAME="worldcupitalia90sms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
