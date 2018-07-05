@echo off
set T_FILENAME="Legendary Wings (U) [!].nes"
set SCRIPTNAME="legendarywingsnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
