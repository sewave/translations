@echo off 
set T_FILENAME="TR_Hook (U) (29252).smc"
set S_FILENAME="Hook (U) (29252).smc"
set SCRIPTNAME="hooksfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips 
pause 
