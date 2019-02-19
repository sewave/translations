@echo off
set T_FILENAME="Hokuto no Ken 3 - Shin Seiki Souzou Seiken Restuden (J) [!].nes"
set SCRIPTNAME="hokutonoken3shinseikisouzouseikenrestudennes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
