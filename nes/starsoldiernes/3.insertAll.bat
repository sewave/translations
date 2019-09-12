@echo off
set T_FILENAME="TR_Star Soldier (U) [!].nes"
set S_FILENAME="Star Soldier (U) [!].nes"
set SCRIPTNAME="starsoldiernes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
