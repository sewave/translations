@echo off
set T_FILENAME="TR_D-Day (1984) (Toshiba Emi) (J).rom"
set S_FILENAME="D-Day (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="ddayrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
