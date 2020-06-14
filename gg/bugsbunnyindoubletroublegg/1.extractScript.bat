@echo off
set T_FILENAME="Bugs Bunny in Double Trouble (U) [!].gg"
set SCRIPTNAME="bugsbunnyindoubletroublegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
