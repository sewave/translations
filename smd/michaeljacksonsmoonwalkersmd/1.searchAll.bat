@echo off
set T_FILENAME="Michael Jackson's Moonwalker (W) (REV01) [!].gen"
set SCRIPTNAME="michaeljacksonsmoonwalkersmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
