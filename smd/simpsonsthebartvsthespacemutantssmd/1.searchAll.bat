@echo off
set T_FILENAME="Simpsons, The - Bart vs The Space Mutants (UE) (REV01) [!].gen"
set SCRIPTNAME="simpsonsthebartvsthespacemutantssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 04 "..\EngDict.txt"
pause
