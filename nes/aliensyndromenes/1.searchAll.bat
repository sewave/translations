@echo off
set T_FILENAME="Alien Syndrome (Tengen) [!].nes"
set SCRIPTNAME="aliensyndromenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
