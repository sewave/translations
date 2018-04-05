@echo off 
set T_FILENAME="TR_Legend (U) (718).smc"
set S_FILENAME="Legend (U) (718).smc"
set SCRIPTNAME="legend"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
