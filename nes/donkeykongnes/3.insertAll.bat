@echo off
set T_FILENAME="TR_Donkey Kong (U) (PRG1) [!].nes"
set S_FILENAME="Donkey Kong (U) (PRG1) [!].nes"
set SCRIPTNAME="donkeykongnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
