@echo off
set T_FILENAME="TR_Tiger Road (U).pce"
set SCRIPTNAME="tigerroadpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
