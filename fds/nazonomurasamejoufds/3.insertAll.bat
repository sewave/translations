@echo off
set T_FILENAME="TR_Nazo no Murasamejou (Japan) [T+ENG].fds"
set S_FILENAME="Nazo no Murasamejou (Japan) [T+ENG].fds"
set SCRIPTNAME="nazonomurasamejoufds"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
