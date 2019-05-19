@echo off
set T_FILENAME="TR_Joe & Mac 2 - Lost in the Tropics (U).smc"
set S_FILENAME="Joe & Mac 2 - Lost in the Tropics (U).smc"
set SCRIPTNAME="joemac2lostinthetropicssfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
