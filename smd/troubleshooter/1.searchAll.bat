@echo off
set T_FILENAME="Trouble Shooter (U) [!].bin"
set SCRIPTNAME="troubleshooter"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00-F4 "..\EngDict.txt"
pause
