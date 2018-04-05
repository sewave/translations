@echo off 
set T_FILENAME="TR_Hudson's Adventure Island (U) [!].nes"
set S_FILENAME="Hudson's Adventure Island (U) [!].nes"
set SCRIPTNAME="advisland"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.txt %T_FILENAME% 
pause 
