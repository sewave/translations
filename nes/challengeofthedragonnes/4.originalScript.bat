@echo off
set T_FILENAME="Challenge of the Dragon (Color Dreams) [!].nes"
set SCRIPTNAME="challengeofthedragonnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
