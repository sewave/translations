@echo off
set T_FILENAME="TR_Donkey Kong 3 (U) [!].nes"
set S_FILENAME="Donkey Kong 3 (U) [!].nes"
set SCRIPTNAME="donkeykong3nes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
