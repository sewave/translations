@echo off 
set T_FILENAME="Armadillo (J) [T+Eng_vice].nes"
set SCRIPTNAME="armadillo"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
