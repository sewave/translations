@echo off
set T_FILENAME="Antarctic Adventure (J) [!].nes"
set SCRIPTNAME="antarcticadventurenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
