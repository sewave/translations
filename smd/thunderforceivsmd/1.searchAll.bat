@echo off
set T_FILENAME="Thunder Force IV (E) [c][!].bin"
set SCRIPTNAME="thunderforceivsmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
