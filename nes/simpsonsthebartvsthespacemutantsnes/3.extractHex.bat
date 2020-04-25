@echo off
set T_FILENAME="TR_Simpsons, The - Bart Vs. the Space Mutants (U) (PRG1) [!].nes"
set SCRIPTNAME="simpsonsthebartvsthespacemutantsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21010-21200,29010-29210,30010-30210,28010-28210,30480-30680
pause
