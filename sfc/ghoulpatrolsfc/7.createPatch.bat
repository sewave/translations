@echo off
set T_FILENAME="TR_Ghoul Patrol (U).smc"
set S_FILENAME="Ghoul Patrol (U).smc"
set SCRIPTNAME="ghoulpatrolsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
