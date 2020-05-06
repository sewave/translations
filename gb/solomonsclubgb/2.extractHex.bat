@echo off
set T_FILENAME="TR_Solomon's Club (U).gb"
set SCRIPTNAME="solomonsclubgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex DC38:20
pause
