set T_FILENAME="Teenage Mutant Ninja Turtles - The Hyperstone Heist (U) [T+ESP].bin"
set S_FILENAME="Teenage Mutant Ninja Turtles - The Hyperstone Heist (U) [!].bin"
set SCRIPTNAME="tmnthyper"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Story.tbl %SCRIPTNAME%Story_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Story2.tbl %SCRIPTNAME%Story2_es.txt %T_FILENAME% false 0
pause