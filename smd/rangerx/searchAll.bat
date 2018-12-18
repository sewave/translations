@echo off 
set T_FILENAME="Ranger-X (U) [!].gen"
set SCRIPTNAME="rangerx"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF 
pause 
