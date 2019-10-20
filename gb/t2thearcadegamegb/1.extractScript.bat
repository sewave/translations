@echo off
set T_FILENAME="T2 - The Arcade Game (U) [!].gb"
set SCRIPTNAME="t2thearcadegamegb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
