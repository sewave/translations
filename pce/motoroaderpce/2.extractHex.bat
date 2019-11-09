@echo off
set T_FILENAME="TR_Moto Roader (U).pce"
set SCRIPTNAME="motoroaderpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
