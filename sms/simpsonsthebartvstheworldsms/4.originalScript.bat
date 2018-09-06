@echo off
set T_FILENAME="Simpsons, The - Bart vs. the World (E) [!].sms"
set SCRIPTNAME="simpsonsthebartvstheworldsms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
