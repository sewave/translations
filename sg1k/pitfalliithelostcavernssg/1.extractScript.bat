@echo off
set T_FILENAME="Pitfall II - The Lost Caverns (Japan).sg"
set SCRIPTNAME="pitfalliithelostcavernssg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
