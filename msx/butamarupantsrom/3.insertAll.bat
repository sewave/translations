@echo off
set T_FILENAME="TR_Butamaru Pants (1983) (Hal) (J).rom"
set S_FILENAME="Butamaru Pants (1983) (Hal) (J).rom"
set SCRIPTNAME="butamarupantsrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
