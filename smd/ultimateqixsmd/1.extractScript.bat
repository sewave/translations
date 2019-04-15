@echo off
set T_FILENAME="Ultimate Qix (U) [!].bin"
set SCRIPTNAME="ultimateqixsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
