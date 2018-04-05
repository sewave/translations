@echo off
set T_FILENAME="Great Circus Mystery Starring Mickey & Minnie, The (U).smc"
set SCRIPTNAME="greatcircusmysterystarringmickeyminniethesfc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
