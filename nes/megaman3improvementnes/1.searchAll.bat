@echo off
set T_FILENAME="Megaman3Improvement (U) [!].nes"
set SCRIPTNAME="megaman3improvementnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Dialog.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
