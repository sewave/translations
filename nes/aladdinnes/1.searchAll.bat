@echo off
set T_FILENAME="Aladdin (E) [!].nes"
set SCRIPTNAME="aladdinnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
