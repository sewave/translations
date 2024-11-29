@echo off
set T_FILENAME="TR_Hit the Ice - VHL - The Official Video Hockey League (USA).pce"
set SCRIPTNAME="hittheicepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5B428:120
pause
