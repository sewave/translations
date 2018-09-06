@echo off
set T_FILENAME="Simpsons, The - Bart vs. the World (E) [!].sms"
set SCRIPTNAME="simpsonsthebartvstheworldsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
