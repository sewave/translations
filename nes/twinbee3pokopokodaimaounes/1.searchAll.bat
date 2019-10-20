@echo off
set T_FILENAME="TwinBee 3 - Poko Poko Dai Maou (J) [T+Eng1.02_Demiforce].nes"
set SCRIPTNAME="twinbee3pokopokodaimaounes"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
