@echo off
set T_FILENAME="Simpsons, The - Bartman Meets Radioactive Man (U) [!].gg"
set SCRIPTNAME="simpsonsthebartmanmeetsradioactivemangg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
