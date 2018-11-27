@echo off
set T_FILENAME="TR_Legendary Axe II, The (USA).pce"
set S_FILENAME="Legendary Axe II, The (USA).pce"
set SCRIPTNAME="legendaryaxeiithepce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
