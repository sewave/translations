@echo off
set T_FILENAME="TR_Donkey Kong Jr. Math (U) [!].nes"
set S_FILENAME="Donkey Kong Jr. Math (U) [!].nes"
set SCRIPTNAME="donkeykongjrmathnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
