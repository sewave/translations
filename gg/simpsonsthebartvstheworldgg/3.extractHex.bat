@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs. The World (U) [!].gg"
set SCRIPTNAME="simpsonsthebartvstheworldgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2FF40:20
pause
