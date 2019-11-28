@echo off
set T_FILENAME="TR_Dig Dug (1984) (Namcot) (J).rom"
set S_FILENAME="Dig Dug (1984) (Namcot) (J).rom"
set SCRIPTNAME="digdugrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
