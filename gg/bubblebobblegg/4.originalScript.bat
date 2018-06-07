@echo off
set T_FILENAME="Bubble Bobble (U) [!].gg"
set SCRIPTNAME="bubblebobblegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
