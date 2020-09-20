@echo off
set T_FILENAME="TR_Blackthorne (USA).gba"
set S_FILENAME="Blackthorne (USA).gba"
set SCRIPTNAME="blackthornegba"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
