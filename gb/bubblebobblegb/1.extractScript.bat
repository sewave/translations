@echo off
set T_FILENAME="Bubble Bobble (USA, Europe).gb"
set SCRIPTNAME="bubblebobblegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
