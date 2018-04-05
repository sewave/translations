@echo off
set T_FILENAME="TR_Aero Blasters (U).pce"
set SCRIPTNAME="aeroblasterspce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
