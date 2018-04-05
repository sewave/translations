@echo off 
set T_FILENAME="TL_Don Doko Don 2 (J) [T+ENG].nes"
set S_FILENAME="Don Doko Don 2 (J) [T+ENG].nes"
set SCRIPTNAME="dondokodon2"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% 
pause 
