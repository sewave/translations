@echo off
set T_FILENAME="TR_All Night Nippon Super Mario Brothers (Japan) (Promotion Card).fds"
set S_FILENAME="All Night Nippon Super Mario Brothers (Japan) (Promotion Card).fds"
set SCRIPTNAME="allnightnipponsupermariobrothersfds"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
