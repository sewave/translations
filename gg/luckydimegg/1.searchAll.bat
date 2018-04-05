@echo off
set T_FILENAME="Lucky Dime Caper, The Starring Donald Duck (U) [!].gg"
set SCRIPTNAME="luckydimegg"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
