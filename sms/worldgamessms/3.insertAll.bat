@echo off
set T_FILENAME="TR_World Games (EB) [!].sms"
set S_FILENAME="World Games (EB) [!].sms"
set SCRIPTNAME="worldgamessms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
