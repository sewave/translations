@echo off
set T_FILENAME="Yume Koujou Doki Doki Panic (Japan).fds"
set SCRIPTNAME="yumekoujoudokidokipanicfds"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
