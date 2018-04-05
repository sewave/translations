@echo off 
set T_FILENAME="Beavis and Butt-head (U) [!].bin"
set SCRIPTNAME="beabutsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 2 00 "..\EngDict.txt" 
pause 
