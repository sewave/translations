@echo off
set T_FILENAME="TR_Boxy Boy (U).pce"
set SCRIPTNAME="boxyboypce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
