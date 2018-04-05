@echo off 
set T_FILENAME="Prince of Persia 2 - The Shadow and The Flame (Beta).bin"
set SCRIPTNAME="ppersia2"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00 "..\EngDict.txt"
pause 
