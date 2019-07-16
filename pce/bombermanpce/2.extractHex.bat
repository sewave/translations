@echo off
set T_FILENAME="TR_Bomberman (U).pce"
set SCRIPTNAME="bombermanpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
