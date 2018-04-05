@echo off 
set T_FILENAME="Street Fighter 2010 - The Final Fight (U) [!].nes"
set SCRIPTNAME="sf2010"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
