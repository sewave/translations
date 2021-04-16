@echo off
set T_FILENAME="Simpsons, The - Bart vs. the Space Mutants (USA) (Rev 1).nes"
set SCRIPTNAME="simpsonsthebartvsthespacemutantsnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
