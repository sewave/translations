@echo off
set T_FILENAME="TR_Gradius (1986) (Konami) (J).rom"
set S_FILENAME="Gradius (1986) (Konami) (J).rom"
set SCRIPTNAME="gradiusrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
