@echo off
set T_FILENAME="TR_Simpsons, The - Bart Vs. the Space Mutants (E) [!].nes"
set S_FILENAME="Simpsons, The - Bart Vs. the Space Mutants (E) [!].nes"
set SCRIPTNAME="simpsonsthebartvsthespacemutantsnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
copy tr_%SCRIPTNAME%Alt.ext script.txt 
bvsmGol -c %T_FILENAME%
pause
