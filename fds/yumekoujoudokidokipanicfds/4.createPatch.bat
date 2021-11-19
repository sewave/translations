@echo off
set T_FILENAME="TR_Yume Koujou Doki Doki Panic (Japan).fds"
set S_FILENAME="Yume Koujou Doki Doki Panic (Japan).fds"
set SCRIPTNAME="yumekoujoudokidokipanicfds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
