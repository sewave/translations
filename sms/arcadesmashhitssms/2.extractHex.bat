@echo off
set T_FILENAME="TR_Arcade Smash Hits (E) [!].sms"
set SCRIPTNAME="arcadesmashhitssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
