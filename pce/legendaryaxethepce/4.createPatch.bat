@echo off
set T_FILENAME="TR_Legendary Axe, The (USA).pce"
set S_FILENAME="Legendary Axe, The (USA).pce"
set SCRIPTNAME="legendaryaxethepce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
