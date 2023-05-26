@echo off
set T_FILENAME="Super Ted - The Search For Spot.tzx"
set SCRIPTNAME="supertedthesearchforspottzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
