@echo off
set T_FILENAME="TR_Shikinjou (J).gg"
set S_FILENAME="Shikinjou (J).gg"
set SCRIPTNAME="shikinjougg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
