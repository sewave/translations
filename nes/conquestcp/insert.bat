@echo off
set T_FILENAME="Conquest of the Crystal Palace (U) [T+ESP].nes"
set S_FILENAME="Conquest of the Crystal Palace (U) [!].nes"
set SCRIPTNAME="conquestcp"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%End.tbl %SCRIPTNAME%End_es.txt %T_FILENAME%
pause