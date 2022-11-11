@echo off
set T_FILENAME="Zenji (1984) (Activision).col"
set SCRIPTNAME="zenjicol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
