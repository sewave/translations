@echo off
set T_FILENAME="TR_Hyper Sports 3 (1985) (Konami) (J).rom"
set S_FILENAME="Hyper Sports 3 (1985) (Konami) (J).rom"
set SCRIPTNAME="hypersports3rom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
