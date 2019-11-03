@echo off
set T_FILENAME="Street Fighter II - The World Warrior (Unl) [!].nes"
set SCRIPTNAME="streetfighteriitheworldwarriornes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
