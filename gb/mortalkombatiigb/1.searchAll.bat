@echo off
set T_FILENAME="Mortal Kombat II (U) [!].gb"
set SCRIPTNAME="mortalkombatiigb"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 CD "..\EngDict.txt"
pause
