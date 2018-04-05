@echo off
set T_FILENAME="Spider-Man vs. the Kingpin (UE) [!].sms"
set SCRIPTNAME="spidermankingpinsms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 3 00 "..\EngDict.txt"
pause
