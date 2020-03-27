@echo off
set T_FILENAME="TR_Xevious - Fardraut Saga (1989) (Namcot) (J).mx2"
set S_FILENAME="Xevious - Fardraut Saga (1989) (Namcot) (J).mx2"
set SCRIPTNAME="xeviousfardrautsagamx2"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
