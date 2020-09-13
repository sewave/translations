@echo off
set T_FILENAME="Cross Wiber - Cyber Combat Police (Japan).pce"
set SCRIPTNAME="crosswibercybercombatpolicepce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
