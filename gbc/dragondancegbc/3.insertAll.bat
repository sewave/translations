@echo off
set T_FILENAME="TR_Dragon Dance (USA) (SGB Enhanced).gbc"
set S_FILENAME="Dragon Dance (USA) (SGB Enhanced).gbc"
set SCRIPTNAME="dragondancegbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
