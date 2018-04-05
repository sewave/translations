@echo off 
set T_FILENAME="Mitsume ga Tooru (J) [T-Eng1.01_Toma].nes"
set SCRIPTNAME="mitsumegatooru"
java -jar Hextractor.jar -sa %SCRIPTNAME%Alt.tbl %T_FILENAME% 3 01 
pause 
