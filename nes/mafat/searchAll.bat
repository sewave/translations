@echo off 
set T_FILENAME="Mafat Conspiracy - Golgo 13 (U) [!].nes"
set SCRIPTNAME="mafat"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
