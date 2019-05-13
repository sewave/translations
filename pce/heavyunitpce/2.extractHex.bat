@echo off
set T_FILENAME="TR_Heavy Unit (J).pce"
set SCRIPTNAME="heavyunitpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
