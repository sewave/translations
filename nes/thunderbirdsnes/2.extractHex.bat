@echo off
set T_FILENAME="TR_Thunderbirds (USA).nes"
set SCRIPTNAME="thunderbirdsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20810:100,20CD0:40,20DD0:40
pause
