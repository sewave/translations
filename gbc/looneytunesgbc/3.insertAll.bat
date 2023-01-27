@echo off
set T_FILENAME="TR_Looney Tunes (USA).gbc"
set S_FILENAME="Looney Tunes (USA).gbc"
set SCRIPTNAME="looneytunesgbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
