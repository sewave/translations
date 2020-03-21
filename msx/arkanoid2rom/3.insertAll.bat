@echo off
set T_FILENAME="TR_Arkanoid 2 (1987) (Taito) (J).rom"
set S_FILENAME="Arkanoid 2 (1987) (Taito) (J).rom"
set SCRIPTNAME="arkanoid2rom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
