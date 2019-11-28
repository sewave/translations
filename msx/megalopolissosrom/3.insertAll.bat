@echo off
set T_FILENAME="TR_Megalopolis SOS (1983)(General).rom"
set S_FILENAME="Megalopolis SOS (1983)(General).rom"
set SCRIPTNAME="megalopolissosrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
