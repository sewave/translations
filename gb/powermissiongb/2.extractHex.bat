@echo off
set T_FILENAME="TR_Power Mission (USA).gb"
set SCRIPTNAME="powermissiongb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex CC00:40,DC00:40,EC00:40,10400:40,104B0:10,110A0:60,111A0:60,11230:40,112E0:20,11350:20,113D0:20,11460:10
pause
