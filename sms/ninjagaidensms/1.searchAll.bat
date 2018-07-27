@echo off
set T_FILENAME="Ninja Gaiden (E) [!].sms"
set SCRIPTNAME="ninjagaidensms"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FD "..\EngDict.txt"
pause
