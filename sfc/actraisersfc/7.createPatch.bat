@echo off
set T_FILENAME="TR_ActRaiser (J) [T+ENG].smc"
set S_FILENAME="ActRaiser (J).smc"
set SCRIPTNAME="actraisersfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
