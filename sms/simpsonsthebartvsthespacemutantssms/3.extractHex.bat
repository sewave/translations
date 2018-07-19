@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs. the Space Mutants (E) [!].sms"
set SCRIPTNAME="simpsonsthebartvsthespacemutantssms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
