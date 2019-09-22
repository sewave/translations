@echo off
set T_FILENAME="TR_Power Drift (Japan).pce"
set SCRIPTNAME="powerdriftpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
