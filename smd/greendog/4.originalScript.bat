@echo off
set T_FILENAME="Greendog - The Beached Surfer Dude (UE) [!].bin"
set SCRIPTNAME="greendog"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
