@echo off
set T_FILENAME="Addams Family, The (UE) [!].gen"
set SCRIPTNAME="addamsfamilythesmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
