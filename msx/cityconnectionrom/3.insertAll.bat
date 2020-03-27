@echo off
set T_FILENAME="TR_City Connection (1986) (Jaleco) (J).rom"
set S_FILENAME="City Connection (1986) (Jaleco) (J).rom"
set SCRIPTNAME="cityconnectionrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
