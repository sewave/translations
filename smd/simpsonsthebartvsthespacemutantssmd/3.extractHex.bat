@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs The Space Mutants (UE) (REV01) [!].gen"
set SCRIPTNAME="simpsonsthebartvsthespacemutantssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 69F00-6A020,6A600:40,6D520-6D720,71838-718F8
pause
