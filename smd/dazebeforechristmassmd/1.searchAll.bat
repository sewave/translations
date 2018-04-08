@echo off
set T_FILENAME="Daze Before Christmas, The (E) [!].bin"
set SCRIPTNAME="dazebeforechristmassmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 00 "..\EngDict.txt"
pause
