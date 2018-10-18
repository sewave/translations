@echo off
set T_FILENAME="Pirates of Dark Water, The (U).smc"
set SCRIPTNAME="piratesofdarkwaterthesfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
