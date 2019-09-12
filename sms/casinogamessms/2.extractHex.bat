@echo off
set T_FILENAME="TR_Casino Games (UE) [!].sms"
set SCRIPTNAME="casinogamessms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
