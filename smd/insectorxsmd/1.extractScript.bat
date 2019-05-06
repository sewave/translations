@echo off
set T_FILENAME="Insector X (U) [!].bin"
set SCRIPTNAME="insectorxsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
