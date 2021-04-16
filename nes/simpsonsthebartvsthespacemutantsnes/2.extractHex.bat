@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs. the Space Mutants (USA) (Rev 1).nes"
set SCRIPTNAME="simpsonsthebartvsthespacemutantsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
