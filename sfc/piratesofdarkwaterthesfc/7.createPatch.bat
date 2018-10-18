@echo off
set T_FILENAME="TR_Pirates of Dark Water, The (U).smc"
set S_FILENAME="Pirates of Dark Water, The (U).smc"
set SCRIPTNAME="piratesofdarkwaterthesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
