@echo off 
set T_FILENAME="Revenge of Shinobi, The (W) (REV00) [!].gen"
set SCRIPTNAME="revshin00"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
