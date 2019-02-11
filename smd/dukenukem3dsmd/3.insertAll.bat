@echo off
set T_FILENAME="TR_Duke Nukem 3D (B) [!].bin"
set S_FILENAME="Duke Nukem 3D (B) [!].bin"
set SCRIPTNAME="dukenukem3dsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
