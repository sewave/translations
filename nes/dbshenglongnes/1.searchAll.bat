@echo off
set T_FILENAME="Dragon Ball - Shen Long no Nazo (J) [hM34][T+Eng1.11_TransBRC].nes"
set SCRIPTNAME="dbshenglongnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
