@echo off
set T_FILENAME="TR_Exerion 2 (1984) (Toshiba Emi) (J).rom"
set S_FILENAME="Exerion 2 (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="exerion2rom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
