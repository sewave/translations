@echo off
set T_FILENAME="TR_Arkanoid (Erbe).tzx"
set S_FILENAME="Arkanoid (Erbe).tzx"
set SCRIPTNAME="arkanoidtzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
