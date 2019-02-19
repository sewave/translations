@echo off
set T_FILENAME="TR_Columns (U) [!].gg"
set S_FILENAME="Columns (U) [!].gg"
set SCRIPTNAME="columnsgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% 5CB8_NEXT.dat 5CB8
java -jar Hextractor.jar -if %T_FILENAME% 5307_NEXT.dat 5307
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
