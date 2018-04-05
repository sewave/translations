@echo off
set T_FILENAME="Teenage Mutant Ninja Turtles III - Radical Rescue (U) [!].gb"
set SCRIPTNAME="teenagemutantninjaturtlesiiiradicalrescuegb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
