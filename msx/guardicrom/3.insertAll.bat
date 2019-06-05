@echo off
set T_FILENAME="TR_Guardic (1986) (Compile) (J).rom"
set S_FILENAME="Guardic (1986) (Compile) (J).rom"
set SCRIPTNAME="guardicrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
