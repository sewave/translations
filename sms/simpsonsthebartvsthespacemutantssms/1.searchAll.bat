@echo off
set T_FILENAME="Simpsons, The - Bart vs. the Space Mutants (E) [!].sms"
set SCRIPTNAME="simpsonsthebartvsthespacemutantssms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
