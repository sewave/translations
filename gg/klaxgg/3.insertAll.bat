@echo off
set T_FILENAME="TR_Klax (USA, Europe).gg"
set S_FILENAME="Klax (USA, Europe).gg"
set SCRIPTNAME="klaxgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
