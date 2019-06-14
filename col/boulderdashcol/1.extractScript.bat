@echo off
set T_FILENAME="Boulder Dash (1984) (Micro Fun).col"
set SCRIPTNAME="boulderdashcol"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
