@echo off 
set T_FILENAME="Gley Lancer (J) [T+ENG].gen"
set SCRIPTNAME="gleylancer"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause 
