@echo off
set T_FILENAME="TR_Super Ted - The Search For Spot.tzx"
set SCRIPTNAME="supertedthesearchforspottzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6415:8,647D:18
pause
