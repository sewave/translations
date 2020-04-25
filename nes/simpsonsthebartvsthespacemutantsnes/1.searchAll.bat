@echo off
set T_FILENAME="Simpsons, The - Bart Vs. the Space Mutants (U) (PRG1) [!].nes"
set SCRIPTNAME="simpsonsthebartvsthespacemutantsnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
