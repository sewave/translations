@echo off
set T_FILENAME="TR_Super Ghouls 'N Ghosts (U) [!].smc"
set S_FILENAME="Super Ghouls 'N Ghosts (U) [!].smc"
set SCRIPTNAME="superghoulsghosts"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
