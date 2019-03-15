@echo off
set T_FILENAME="Chakan - The Forever Man (UE) [!].gen"
set SCRIPTNAME="chakantheforevermansmd"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
