@echo off
set T_FILENAME="Great Circus Mystery Starring Mickey & Minnie, The (U).smc"
set SCRIPTNAME="greatcircusmysterystarringmickeyminniethesfc"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
