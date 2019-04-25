@echo off
set T_FILENAME="TR_Dark Castle (UE) [!].bin"
set S_FILENAME="Dark Castle (UE) [!].bin"
set SCRIPTNAME="darkcastlesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
