@echo off
set T_FILENAME="Teenage Mutant Ninja Turtles - Back From the Sewers (U) [!].gb"
set SCRIPTNAME="teenagemutantninjaturtlesbackfromthesewersgb"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
