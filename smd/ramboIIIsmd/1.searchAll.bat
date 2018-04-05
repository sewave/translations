@echo off
set T_FILENAME="Rambo III (W) (REV01) [!].bin"
set SCRIPTNAME="ramboIIIsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00 "..\EngDict.txt"
pause
