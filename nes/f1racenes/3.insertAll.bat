@echo off
set T_FILENAME="TR_F1 Race (Japan).nes"
set S_FILENAME="F1 Race (Japan).nes"
set SCRIPTNAME="f1racenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
