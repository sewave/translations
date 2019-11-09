@echo off
set T_FILENAME="TR_Impossamole (U).pce"
set SCRIPTNAME="impossamolepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
