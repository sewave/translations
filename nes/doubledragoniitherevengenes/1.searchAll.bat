@echo off
set T_FILENAME="Double Dragon II - The Revenge (U) (PRG1) [!].nes"
set SCRIPTNAME="doubledragoniitherevengenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
