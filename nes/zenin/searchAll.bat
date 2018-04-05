@echo off 
set T_FILENAME="Zen - Intergalactic Ninja (U) [!].nes"
set SCRIPTNAME="zenin"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF 
pause 
