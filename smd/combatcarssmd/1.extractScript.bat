@echo off
set T_FILENAME="Combat Cars (UE) [!].bin"
set SCRIPTNAME="combatcarssmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
