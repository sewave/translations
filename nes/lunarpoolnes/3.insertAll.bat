@echo off
set T_FILENAME="TR_Lunar Pool (U) [!].nes"
set S_FILENAME="Lunar Pool (U) [!].nes"
set SCRIPTNAME="lunarpoolnes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
