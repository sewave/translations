@echo off
set T_FILENAME="Simpsons, The - Bart vs The Space Mutants (UE) (REV01) [!].gen"
set SCRIPTNAME="simpsonsthebartvsthespacemutantssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
