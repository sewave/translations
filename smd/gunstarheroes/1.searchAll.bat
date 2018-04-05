@echo off
set T_FILENAME="Gunstar Heroes (U) [!].bin"
set SCRIPTNAME="gunstarheroes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
