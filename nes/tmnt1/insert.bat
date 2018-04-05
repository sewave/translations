set T_FILENAME="Teenage Mutant Ninja Turtles (U) [T+ESP].nes"
set S_FILENAME="Teenage Mutant Ninja Turtles (U) [!].nes"
set SCRIPTNAME="tmnt1"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause