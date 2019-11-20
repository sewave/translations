@echo off
set T_FILENAME="TR_Justice League Task Force (W) [!].bin"
set SCRIPTNAME="justiceleaguetaskforcesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
