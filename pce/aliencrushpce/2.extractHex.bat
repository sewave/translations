@echo off
set T_FILENAME="TR_Alien Crush (U).pce"
set SCRIPTNAME="aliencrushpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
