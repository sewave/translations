@echo off
set T_FILENAME="TR_Tiny Toon Adventures - Acme All-Stars (U) [!].gen"
set S_FILENAME="Tiny Toon Adventures - Acme All-Stars (U) [!].gen"
set SCRIPTNAME="tinytoonadventuresacmeallstarsssmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl tr_%SCRIPTNAME%Alt2.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
