@echo off
set T_FILENAME="TR_Legendary Axe, The (USA).pce"
set SCRIPTNAME="legendaryaxethepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
