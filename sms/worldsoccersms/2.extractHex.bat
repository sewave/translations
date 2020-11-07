@echo off
set T_FILENAME="TR_World Soccer (E) [!].sms"
set SCRIPTNAME="worldsoccersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A070:40,1B7BA:60,1B45A:160,17B06:100,13900:800
pause
