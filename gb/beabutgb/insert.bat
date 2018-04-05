@echo off 
set T_FILENAME="TR_Beavis and Butt-head (U) [!].gb"
set S_FILENAME="Beavis and Butt-head (U) [!].gb"
set SCRIPTNAME="beabutgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME% 
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_tr.ext %T_FILENAME% 
java -jar Hextractor.jar -fcg %T_FILENAME% 
pause 
