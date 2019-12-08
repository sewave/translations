@echo off
set T_FILENAME="TR_Doki Doki Penguin Land (SG-1000).sg"
set S_FILENAME="Doki Doki Penguin Land (SG-1000).sg"
set SCRIPTNAME="dokidokipenguinlandsg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
