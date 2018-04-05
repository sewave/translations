@echo off
set T_FILENAME="Great Circus Mystery, The - Starring Mickey & Minnie (U) [!].gen"
set SCRIPTNAME="circusmysmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
