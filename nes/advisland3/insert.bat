@echo off 
set T_FILENAME="TL_Hudson's Adventure Island III (U) [!].nes"
set S_FILENAME="Hudson's Adventure Island III (U) [!].nes"
set SCRIPTNAME="advisland3"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%Hex.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%Big.tbl %SCRIPTNAME%Big_es.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.txt %T_FILENAME% 
REM java -jar Hextractor.jar -h %SCRIPTNAME%BigAlt.tbl %SCRIPTNAME%BigAlt_es.txt %T_FILENAME% 
pause 
