@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs The Space Mutants (UE) (REV01) [!].gen"
set S_FILENAME="Simpsons, The - Bart vs The Space Mutants (UE) (REV01) [!].gen"
set SCRIPTNAME="simpsonsthebartvsthespacemutantssmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
