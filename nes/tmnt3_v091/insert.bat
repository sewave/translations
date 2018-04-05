set T_FILENAME="Teenage Mutant Ninja Turtles III - The Manhattan Project (U) [T+ESP].nes"
set S_FILENAME="Teenage Mutant Ninja Turtles III - The Manhattan Project (U) [!].nes"
set SCRIPTNAME="tmnt3"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause