@echo off
set T_FILENAME="TR_Pitfall II - The Lost Caverns (Japan).sg"
set SCRIPTNAME="pitfalliithelostcavernssg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
