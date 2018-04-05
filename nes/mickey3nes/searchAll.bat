@echo off 
set T_FILENAME="Mickey Mouse III - Yume Fuusen (J) [T+ENG].nes"
set SCRIPTNAME="mickey3nes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 00 
pause 
