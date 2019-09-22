@echo off
set T_FILENAME="TR_Ballistix (U).pce"
set SCRIPTNAME="ballistixpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
