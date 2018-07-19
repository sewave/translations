@echo off
set T_FILENAME="Simpsons, The - Bart vs. The Space Mutants (U) [!].gg"
set SCRIPTNAME="simpsonsthebartvsthespacemutantsgg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
