@echo off
set T_FILENAME="Spartan X 2 (J) [T+Eng7Mar2003_Abstract Crouton Productions].nes"
set SCRIPTNAME="spartanx2nes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt3.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
