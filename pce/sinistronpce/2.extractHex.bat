@echo off
set T_FILENAME="TR_Sinistron (U).pce"
set SCRIPTNAME="sinistronpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
