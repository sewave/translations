@echo off 
set T_FILENAME="Toejam & Earl in Panic on Funkotron (U) [T+ESP].gen"
set S_FILENAME="Toejam & Earl in Panic on Funkotron (U) [!].gen"
set SCRIPTNAME="toejam2"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause