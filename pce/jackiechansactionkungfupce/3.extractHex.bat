@echo off
set T_FILENAME="TR_Jackie Chan's Action Kung Fu (U).pce"
set SCRIPTNAME="jackiechansactionkungfupce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
