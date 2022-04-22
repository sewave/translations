@echo off
set T_FILENAME="TR_Penguin Adventure (Japan, Europe).rom"
set S_FILENAME="Penguin Adventure (Japan, Europe).rom"
set SCRIPTNAME="penguinadventurerom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
