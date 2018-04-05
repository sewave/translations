@echo off
set T_FILENAME="TR_Great Circus Mystery Starring Mickey & Minnie, The (U).smc"
set S_FILENAME="Great Circus Mystery Starring Mickey & Minnie, The (U).smc"
set SCRIPTNAME="greatcircusmysterystarringmickeyminniethesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
