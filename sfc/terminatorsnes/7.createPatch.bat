@echo off
set T_FILENAME="TR_Terminator, The (U).smc"
set S_FILENAME="Terminator, The (U).smc"
set SCRIPTNAME="terminatorsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
