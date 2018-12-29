@echo off
set T_FILENAME="TR_Super Ghouls 'N Ghosts (U) [!].smc"
set SCRIPTNAME="superghoulsghosts"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
