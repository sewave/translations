@echo off
set T_FILENAME="TR_Mortal Kombat 4 (USA, Europe) (SGB Enhanced).gbc"
set S_FILENAME="Mortal Kombat 4 (USA, Europe) (SGB Enhanced).gbc"
set SCRIPTNAME="mortalkombat4gbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
