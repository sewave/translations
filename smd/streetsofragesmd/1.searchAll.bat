@echo off
set T_FILENAME="Streets of Rage (W) (REV01) [!].gen"
set SCRIPTNAME="streetsofragesmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
