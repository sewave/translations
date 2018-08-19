@echo off
set T_FILENAME="Dr. Jekyll and Mr. Hyde (U) [!].nes"
set SCRIPTNAME="drjekyllandmrhydenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
