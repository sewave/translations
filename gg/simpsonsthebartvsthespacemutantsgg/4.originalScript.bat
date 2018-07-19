@echo off
set T_FILENAME="Simpsons, The - Bart vs. The Space Mutants (U) [!].gg"
set SCRIPTNAME="simpsonsthebartvsthespacemutantsgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
