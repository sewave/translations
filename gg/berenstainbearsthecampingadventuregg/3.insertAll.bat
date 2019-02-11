@echo off
set T_FILENAME="TR_Berenstain Bears', The - Camping Adventure (U) [!].gg"
set S_FILENAME="Berenstain Bears', The - Camping Adventure (U) [!].gg"
set SCRIPTNAME="berenstainbearsthecampingadventuregg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
