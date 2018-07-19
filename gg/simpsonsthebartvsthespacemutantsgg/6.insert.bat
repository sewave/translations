@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs. The Space Mutants (U) [!].gg"
set S_FILENAME="Simpsons, The - Bart vs. The Space Mutants (U) [!].gg"
set SCRIPTNAME="simpsonsthebartvsthespacemutantsgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
