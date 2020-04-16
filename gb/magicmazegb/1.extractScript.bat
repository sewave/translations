@echo off
set T_FILENAME="Magic Maze (Sachen) [!].gb"
set SCRIPTNAME="magicmazegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
