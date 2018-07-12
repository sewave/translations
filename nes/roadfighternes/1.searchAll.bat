@echo off
set T_FILENAME="Road Fighter (J) [!].nes"
set SCRIPTNAME="roadfighternes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF-FE "..\EngDict.txt"
pause
