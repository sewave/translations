@echo off
set T_FILENAME="Escape From Mars Starring Taz (U) [!].bin"
set SCRIPTNAME="tazmarssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
