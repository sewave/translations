@echo off
set T_FILENAME="T2 - The Arcade Game (U) [!].gg"
set SCRIPTNAME="terminator2arcadegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
