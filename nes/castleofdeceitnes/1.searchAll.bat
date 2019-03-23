@echo off
set T_FILENAME="Castle of Deceit (Bunch) [!].nes"
set SCRIPTNAME="castleofdeceitnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
