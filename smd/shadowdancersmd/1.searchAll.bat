@echo off
set T_FILENAME="Shadow Dancer - The Secret of Shinobi (W) [c][!].gen"
set SCRIPTNAME="shadowdancersmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
