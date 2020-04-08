@echo off
set T_FILENAME="TR_Arctic Zone (Sachen 4-in-1 Vol. 5) (Unl) [!].gb"
set S_FILENAME="Arctic Zone (Sachen 4-in-1 Vol. 5) (Unl) [!].gb"
set SCRIPTNAME="arcticzonegb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
