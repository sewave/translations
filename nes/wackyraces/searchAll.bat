@echo off 
set T_FILENAME="Wacky Races (U) [!].nes"
set SCRIPTNAME="wackyraces"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF-FE
pause 
