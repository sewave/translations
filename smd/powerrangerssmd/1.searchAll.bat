@echo off
set T_FILENAME="Mighty Morphin Power Rangers (U) [!].bin"
set SCRIPTNAME="powerrangerssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt3.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
