@echo off
set T_FILENAME="TR_Berenstain Bears', The - Camping Adventure (U) [!].bin"
set S_FILENAME="Berenstain Bears', The - Camping Adventure (U) [!].bin"
set SCRIPTNAME="berenstainbearsthecampingadventuresmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
