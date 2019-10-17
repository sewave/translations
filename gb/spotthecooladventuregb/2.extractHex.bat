@echo off
set T_FILENAME="TR_Spot - The Cool Adventure (U).gb"
set SCRIPTNAME="spotthecooladventuregb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
