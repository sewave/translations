@echo off
set T_FILENAME="Arcade Classics (U) [!].gg"
set SCRIPTNAME="arcadeclassicsgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
