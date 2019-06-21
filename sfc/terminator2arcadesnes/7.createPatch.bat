@echo off
set T_FILENAME="TR_T2 - The Arcade Game (U).smc"
set S_FILENAME="T2 - The Arcade Game (U).smc"
set SCRIPTNAME="terminator2arcadesnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
