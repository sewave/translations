@echo off
set T_FILENAME="Advanced Dungeons & Dragons - Heroes of the Lance (U) [!].nes"
set SCRIPTNAME="advanceddungeonsdragonsheroesofthelancenes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
