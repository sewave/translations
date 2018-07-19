@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs The Space Mutants (UE) (REV01) [!].gen"
set S_FILENAME="Simpsons, The - Bart vs The Space Mutants (UE) (REV01) [!].gen"
set SCRIPTNAME="simpsonsthebartvsthespacemutantssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
