@echo off
set T_FILENAME="Jetsons, The (U).gb"
set SCRIPTNAME="jetsonsthegb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 C0 "..\EngDict.txt"
pause
