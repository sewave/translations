@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs. The World (U) [!].gg"
set S_FILENAME="Simpsons, The - Bart vs. The World (U) [!].gg"
set SCRIPTNAME="simpsonsthebartvstheworldgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
