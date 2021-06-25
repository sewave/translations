@echo off
set T_FILENAME="TR_Nightmare on Elm Street, A (USA).nes"
set S_FILENAME="Nightmare on Elm Street, A (USA).nes"
set SCRIPTNAME="nightmareonelmstreetanes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
