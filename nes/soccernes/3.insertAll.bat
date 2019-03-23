@echo off
set T_FILENAME="TR_Soccer (JU) [!].nes"
set S_FILENAME="Soccer (JU) [!].nes"
set SCRIPTNAME="soccernes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
