@echo off
set T_FILENAME="TR_Konami's Baseball (1984) (Konami) (J).rom"
set S_FILENAME="Konami's Baseball (1984) (Konami) (J).rom"
set SCRIPTNAME="konamisbaseballrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
