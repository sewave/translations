@echo off 
set T_FILENAME="TR_Vigilante (U).pce"
set S_FILENAME="Vigilante (U).pce"
set SCRIPTNAME="vigilantepce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
