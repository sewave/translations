@echo off
set T_FILENAME="Altered Beast (UE) (REV02) [!].gen"
set SCRIPTNAME="alteredbeastssmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
