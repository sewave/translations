@echo off
set T_FILENAME="TR_Hyper Rally (1985) (Konami) (J).rom"
set S_FILENAME="Hyper Rally (1985) (Konami) (J).rom"
set SCRIPTNAME="hyperrallyrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
