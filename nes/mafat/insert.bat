@echo off 
set T_FILENAME="TR_Mafat Conspiracy - Golgo 13 (U) [!].nes"
set S_FILENAME="Mafat Conspiracy - Golgo 13 (U) [!].nes"
set SCRIPTNAME="mafat"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.ext %T_FILENAME% 
pause 
