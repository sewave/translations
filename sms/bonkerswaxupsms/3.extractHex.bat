@echo off
set T_FILENAME="TR_Bonkers Wax Up! (UE) [!].sms"
set SCRIPTNAME="bonkerswaxupsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
