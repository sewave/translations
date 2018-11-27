@echo off
set T_FILENAME="TR_Legendary Axe II, The (USA).pce"
set SCRIPTNAME="legendaryaxeiithepce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
