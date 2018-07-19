@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs. The Space Mutants (U) [!].gg"
set SCRIPTNAME="simpsonsthebartvsthespacemutantsgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
