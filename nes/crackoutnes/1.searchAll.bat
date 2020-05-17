@echo off
set T_FILENAME="Crackout (U) (Prototype).nes"
set SCRIPTNAME="crackoutnes"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt2.tbl %T_FILENAME% 4 FE "..\EngDict.txt"
pause
