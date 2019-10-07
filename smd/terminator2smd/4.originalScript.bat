@echo off
set T_FILENAME="Terminator 2 - Judgment Day (UE) [!].bin"
set SCRIPTNAME="terminator2smd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
