@echo off 
set T_FILENAME="TL_Hudson's Adventure Island II (U) [!].nes"
set S_FILENAME="Hudson's Adventure Island II (U) [!].nes"
set SCRIPTNAME="advisland2"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%Start.tbl %SCRIPTNAME%Start_es.txt %T_FILENAME% 
pause 
