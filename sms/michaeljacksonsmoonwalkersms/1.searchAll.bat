@echo off
set T_FILENAME="Michael Jackson's Moonwalker (UE) [!].sms"
set SCRIPTNAME="michaeljacksonsmoonwalkersms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
