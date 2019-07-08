@echo off
set T_FILENAME="TR_Dragon Crystal (U) [!].gg"
set S_FILENAME="Dragon Crystal (U) [!].gg"
set SCRIPTNAME="dragoncrystalgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
REM java -jar Hextractor.jar -if %T_FILENAME% 18773.dat 18773
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
