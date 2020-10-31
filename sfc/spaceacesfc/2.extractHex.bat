@echo off
set T_FILENAME="TR_Space Ace (USA).sfc"
set SCRIPTNAME="spaceacesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
