@echo off
set T_FILENAME="TR_Turrican (U).pce"
set SCRIPTNAME="turricanpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
