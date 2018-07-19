@echo off
set T_FILENAME="TwinBee (J) [!].nes"
set SCRIPTNAME="twinbeenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
