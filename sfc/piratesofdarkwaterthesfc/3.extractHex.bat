@echo off
set T_FILENAME="TR_Pirates of Dark Water, The (U).smc"
set SCRIPTNAME="piratesofdarkwaterthesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
