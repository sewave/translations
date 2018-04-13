@echo off 
set T_FILENAME="TR_Armadillo (J) [T+Eng_vice].nes"
set S_FILENAME="Armadillo (J) [T+Eng_vice].nes"
set SCRIPTNAME="armadillo"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.ext %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
pause 
