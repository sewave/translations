@echo off
set T_FILENAME="TR_GG Aleste 3 (Japan) (En) (Aleste Collection) [FIX].gg"
set S_FILENAME="GG Aleste 3 (Japan) (En) (Aleste Collection) [FIX].gg"
set SCRIPTNAME="ggaleste3gg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
pause
