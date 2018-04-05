@echo off
set T_FILENAME="TR_Great Circus Mystery Starring Mickey & Minnie, The (U).smc"
set SCRIPTNAME="greatcircusmysterystarringmickeyminniethesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
