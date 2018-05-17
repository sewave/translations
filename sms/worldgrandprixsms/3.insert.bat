@echo off
set T_FILENAME="TR_World Grand Prix (U) [!].sms"
set S_FILENAME="World Grand Prix (U) [!].sms"
set SCRIPTNAME="worldgrandprixsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
