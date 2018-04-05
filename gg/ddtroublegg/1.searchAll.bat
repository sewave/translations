@echo off
set T_FILENAME="Deep Duck Trouble Starring Donald Duck (U) [!].gg"
set SCRIPTNAME="ddtroublegg"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
