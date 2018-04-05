@echo off 
set T_FILENAME="Toki (U) [!].nes"
set SCRIPTNAME="tokines"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
