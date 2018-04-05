@echo off 
set T_FILENAME="Castlevania - Bloodlines (U) [!].gen"
set SCRIPTNAME="castlevaniablood"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt5.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause 
