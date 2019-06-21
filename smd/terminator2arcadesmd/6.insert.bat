@echo off
set T_FILENAME="TR_T2 - The Arcade Game (UE) (REV01) [!].bin"
set S_FILENAME="T2 - The Arcade Game (UE) (REV01) [!].bin"
set SCRIPTNAME="terminator2arcadesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
