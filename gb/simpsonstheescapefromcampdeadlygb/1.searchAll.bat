@echo off
set T_FILENAME="Simpsons, The - Escape from Camp Deadly (U) [!].gb"
set SCRIPTNAME="simpsonstheescapefromcampdeadlygb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
