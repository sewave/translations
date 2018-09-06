@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs. the World (E) [!].sms"
set SCRIPTNAME="simpsonsthebartvstheworldsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2FF40:40
pause
