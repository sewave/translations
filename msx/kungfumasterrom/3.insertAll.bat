@echo off
set T_FILENAME="TR_Kung-Fu Master (1983) (Mass Tael) (J).rom"
set S_FILENAME="Kung-Fu Master (1983) (Mass Tael) (J).rom"
set SCRIPTNAME="kungfumasterrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
