@echo off
set T_FILENAME="Jordan vs Bird (USA, Europe) (v1.1).md"
set SCRIPTNAME="jordanvsbirdsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
