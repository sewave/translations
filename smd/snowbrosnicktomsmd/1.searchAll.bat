@echo off
set T_FILENAME="Snow Bros. - Nick & Tom (J) [c][!].gen"
set SCRIPTNAME="snowbrosnicktomsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
