@echo off
set T_FILENAME="TR_Soldier Blade (U).pce"
set S_FILENAME="Soldier Blade (U).pce"
set SCRIPTNAME="soldierbladepce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
