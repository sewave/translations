@echo off
set T_FILENAME="TR_Bonkers Wax Up! (U) [!].gg"
set S_FILENAME="Bonkers Wax Up! (U) [!].gg"
set SCRIPTNAME="bonkerswaxupgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
