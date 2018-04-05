@echo off 
set T_FILENAME="TR_Vigilante (U).pce"
set SCRIPTNAME="vigilantepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
