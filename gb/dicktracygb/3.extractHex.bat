@echo off
set T_FILENAME="TR_Dick Tracy (U).gb"
set SCRIPTNAME="dicktracygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
