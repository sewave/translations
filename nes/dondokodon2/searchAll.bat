@echo off 
set T_FILENAME="Don Doko Don 2 (J) [T+ENG].nes"
set SCRIPTNAME="dondokodon2"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
