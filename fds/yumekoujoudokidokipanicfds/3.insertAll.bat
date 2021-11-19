@echo off
set T_FILENAME="TR_Yume Koujou Doki Doki Panic (Japan).fds"
set S_FILENAME="Yume Koujou Doki Doki Panic (Japan).fds"
set SCRIPTNAME="yumekoujoudokidokipanicfds"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause
