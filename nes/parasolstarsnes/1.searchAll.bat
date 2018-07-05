@echo off
set T_FILENAME="Parasol Stars - The Story of Bubble Bobble 3 (E) [!].nes"
set SCRIPTNAME="parasolstarsnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 0 FF "..\EngDict.txt"
pause
