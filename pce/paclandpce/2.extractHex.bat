@echo off
set T_FILENAME="TR_Pac-Land (U).pce"
set SCRIPTNAME="paclandpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
