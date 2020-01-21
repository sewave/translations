@echo off
set T_FILENAME="TR_Kung-Fu Taigun (1984) (Toshiba Emi) (J).rom"
set S_FILENAME="Kung-Fu Taigun (1984) (Toshiba Emi) (J).rom"
set SCRIPTNAME="kungfutaigunrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
