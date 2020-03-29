@echo off
set T_FILENAME="TR_World Games (EB) [!].sms"
set SCRIPTNAME="worldgamessms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
