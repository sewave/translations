@echo off
set T_FILENAME="Teenage Mutant Ninja Turtles - Fall of the Foot Clan (U) [!].gb"
set SCRIPTNAME="teenagemutantninjaturtlesfallofthefootclangb"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
