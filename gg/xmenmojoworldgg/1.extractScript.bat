@echo off
set T_FILENAME="X-Men - Mojo World (U) [!].gg"
set SCRIPTNAME="xmenmojoworldgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
