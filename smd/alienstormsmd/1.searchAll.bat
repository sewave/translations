@echo off
set T_FILENAME="Alien Storm (W) [!].gen"
set SCRIPTNAME="alienstormsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 FF "..\EngDict.txt" 
pause
