@echo off
set T_FILENAME="TR_Yume Koujou Doki Doki Panic (Japan).fds"
set SCRIPTNAME="yumekoujoudokidokipanicfds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A2EF:30,B6BF:80,BF7F:10,BFDF:10,C870:100
pause
