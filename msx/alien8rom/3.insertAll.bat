@echo off
set T_FILENAME="TR_Alien 8 (Japan).rom"
set S_FILENAME="Alien 8 (Japan).rom"
set SCRIPTNAME="alien8rom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
