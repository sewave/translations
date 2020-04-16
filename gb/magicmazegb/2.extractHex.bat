@echo off
set T_FILENAME="TR_Magic Maze (Sachen) [!].gb"
set SCRIPTNAME="magicmazegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 306E:10,314E:10,320E:10,32DE:10,33AE:10
pause
