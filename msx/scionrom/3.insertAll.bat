@echo off
set T_FILENAME="TR_Scion (1985) (Sony) (J).rom"
set S_FILENAME="Scion (1985) (Sony) (J).rom"
set SCRIPTNAME="scionrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
