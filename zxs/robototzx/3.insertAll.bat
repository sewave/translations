@echo off
set T_FILENAME="TR_Roboto.tzx"
set S_FILENAME="Roboto.tzx"
set SCRIPTNAME="robototzx"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Rooms.tbl tr_%SCRIPTNAME%Rooms.ext %T_FILENAME%
java -jar Hextractor.jar -fctzx %T_FILENAME%
pause
