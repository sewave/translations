@echo off 
set T_FILENAME="True Lies (W) [!].gen"
set SCRIPTNAME="trueliessmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 1 24 "..\EngDict.txt"
pause 
