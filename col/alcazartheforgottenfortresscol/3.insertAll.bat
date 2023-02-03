@echo off
set T_FILENAME="TR_Alcazar - The Forgotten Fortress (1985) (Activision).col"
set S_FILENAME="Alcazar - The Forgotten Fortress (1985) (Activision).col"
set SCRIPTNAME="alcazartheforgottenfortresscol"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
