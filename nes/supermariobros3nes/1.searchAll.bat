@echo off
set T_FILENAME="Super Mario Bros. 3 (U) (PRG1) [!].nes"
set SCRIPTNAME="supermariobros3nes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
