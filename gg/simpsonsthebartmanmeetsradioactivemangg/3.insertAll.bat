@echo off
set T_FILENAME="TR_Simpsons, The - Bartman Meets Radioactive Man (U) [!].gg"
set S_FILENAME="Simpsons, The - Bartman Meets Radioactive Man (U) [!].gg"
set SCRIPTNAME="simpsonsthebartmanmeetsradioactivemangg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
