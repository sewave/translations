@echo off
set T_FILENAME="TR_Terminator, The (U).smc"
set SCRIPTNAME="terminatorsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 966C5-967F4
pause
