@echo off
set T_FILENAME="Juuouki (J) [T+Eng1.00_akadewboy].nes"
set SCRIPTNAME="juuoukines"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FF "..\EngDict.txt"
pause
