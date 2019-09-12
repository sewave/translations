@echo off
set T_FILENAME="TR_Combatribes, The (U).smc"
set SCRIPTNAME="combatribesthesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 69236:20,69286:20,69396:20,69596:20
pause
