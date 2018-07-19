@echo off
set T_FILENAME="Simpsons, The - Bart vs. the Space Mutants (E) [!].sms"
set SCRIPTNAME="simpsonsthebartvsthespacemutantssms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
