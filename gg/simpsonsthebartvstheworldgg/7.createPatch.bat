@echo off
set T_FILENAME="TR_Simpsons, The - Bart vs. The World (U) [!].gg"
set S_FILENAME="Simpsons, The - Bart vs. The World (U) [!].gg"
set SCRIPTNAME="simpsonsthebartvstheworldgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
