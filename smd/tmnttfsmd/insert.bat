set T_FILENAME="Teenage Mutant Ninja Turtles - Tournament Fighters (U) [T+ESP].bin"
set S_FILENAME="Teenage Mutant Ninja Turtles - Tournament Fighters (U) [c][!].bin"
set SCRIPTNAME="tmnttfsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.txt %T_FILENAME% false 0
pause