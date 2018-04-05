@echo off 
set T_FILENAME="TR_Wacky Races (U) [!].nes"
set S_FILENAME="Wacky Races (U) [!].nes"
set SCRIPTNAME="wackyraces"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%Title.tbl %SCRIPTNAME%Title_tr.txt %T_FILENAME% 
pause 
