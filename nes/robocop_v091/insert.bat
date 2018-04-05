set T_FILENAME="RoboCop (U) [T+ESP].nes"
set S_FILENAME="RoboCop (U) [!].nes"
set SCRIPTNAME="robocop"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%End.tbl %SCRIPTNAME%End_es.txt %T_FILENAME% false 0
pause