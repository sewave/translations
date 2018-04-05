set T_FILENAME="Teenage Mutant Ninja Turtles II - The Arcade Game (U) [T+ESP].nes"
set S_FILENAME="Teenage Mutant Ninja Turtles II - The Arcade Game (U) [!].nes"
set SCRIPTNAME="tmnt2"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Cutscenes.tbl %SCRIPTNAME%Cutscenes_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%End.tbl %SCRIPTNAME%End_es.txt %T_FILENAME% false 0
pause