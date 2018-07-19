@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs. The Space Mutants (U) [!].gg"
set S_FILENAME="Simpsons, The - Bart vs. The Space Mutants (U) [!].gg"
set SCRIPTNAME="simpsonsthebartvsthespacemutantsgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
