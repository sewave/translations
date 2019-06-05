@echo off
set T_FILENAME="TR_Circus Charlie (1984) (Konami) (J).rom"
set S_FILENAME="Circus Charlie (1984) (Konami) (J).rom"
set SCRIPTNAME="circuscharlierom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
