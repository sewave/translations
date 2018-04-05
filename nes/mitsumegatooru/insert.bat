@echo off 
set T_FILENAME="TR_Mitsume ga Tooru (J) [T-Eng1.01_Toma].nes"
set S_FILENAME="Mitsume ga Tooru (J) [T-Eng1.01_Toma].nes"
set SCRIPTNAME="mitsumegatooru"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_tr.txt %T_FILENAME% 
pause 
