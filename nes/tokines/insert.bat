@echo off 
set T_FILENAME="TL_Toki (U) [!].nes"
set S_FILENAME="Toki (U) [!].nes"
set SCRIPTNAME="tokines"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% 
pause 
