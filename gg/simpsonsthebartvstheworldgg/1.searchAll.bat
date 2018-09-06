@echo off
set T_FILENAME="Simpsons, The - Bart vs. The World (U) [!].gg"
set SCRIPTNAME="simpsonsthebartvstheworldgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
