@echo off
set T_FILENAME="Simpsons, The - Bart vs. The World (U) [!].gg"
set SCRIPTNAME="simpsonsthebartvstheworldgg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
