@echo off
set T_FILENAME="Arrow Flash (UE) [!].bin"
set SCRIPTNAME="arrowflashsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
