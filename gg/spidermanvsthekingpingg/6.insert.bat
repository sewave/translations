@echo off
set T_FILENAME="TR_Spider-Man vs. The Kingpin (U) [!].gg"
set S_FILENAME="Spider-Man vs. The Kingpin (U) [!].gg"
set SCRIPTNAME="spidermanvsthekingpingg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
