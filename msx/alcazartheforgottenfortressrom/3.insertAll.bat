@echo off
set T_FILENAME="TR_Alcazar - The Forgotten Fortress (Japan).rom"
set S_FILENAME="Alcazar - The Forgotten Fortress (Japan).rom"
set SCRIPTNAME="alcazartheforgottenfortressrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
