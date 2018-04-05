@echo off 
set T_FILENAME="TL_Zen - Intergalactic Ninja (U) [!].nes"
set S_FILENAME="Zen - Intergalactic Ninja (U) [!].nes"
set SCRIPTNAME="zenin"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.txt %T_FILENAME% 
pause 
