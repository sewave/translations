@echo off
set T_FILENAME="Terminator 2 - Judgment Day (UE) [!].gb"
set SCRIPTNAME="terminator2gb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
