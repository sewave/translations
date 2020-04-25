@echo off
set T_FILENAME="Simpsons, The - Bart Vs. the Space Mutants (E) [!].nes"
set SCRIPTNAME="simpsonsthebartvsthespacemutantsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
del script.txt
bvsmGol -d %T_FILENAME%
del %SCRIPTNAME%Alt.ext
ren script.txt %SCRIPTNAME%Alt.ext
pause
 