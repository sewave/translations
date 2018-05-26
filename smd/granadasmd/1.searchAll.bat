@echo off
set T_FILENAME="Granada (JU) (REV01) [!].gen"
set SCRIPTNAME="granadasmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
