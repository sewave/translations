@echo off
set T_FILENAME="TR_Juuouki (J).pce"
set SCRIPTNAME="alteredbeastpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
