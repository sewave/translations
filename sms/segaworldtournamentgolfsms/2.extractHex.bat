@echo off
set T_FILENAME="TR_Sega World Tournament Golf (EBK) [!].sms"
set SCRIPTNAME="segaworldtournamentgolfsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
