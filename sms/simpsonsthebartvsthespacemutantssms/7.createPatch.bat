@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs. the Space Mutants (E) [!].sms"
set S_FILENAME="Simpsons, The - Bart vs. the Space Mutants (E) [!].sms"
set SCRIPTNAME="simpsonsthebartvsthespacemutantssms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
