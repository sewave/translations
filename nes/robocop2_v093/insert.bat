set T_FILENAME="RoboCop 2 (U) (PRG1) [T+ESP].nes"
set S_FILENAME="RoboCop 2 (U) (PRG1) [!].nes"
set SCRIPTNAME="robocop2"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%End.tbl %SCRIPTNAME%End_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Arrest.tbl %SCRIPTNAME%Arrest_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Title.tbl %SCRIPTNAME%Title_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%NoCont.tbl %SCRIPTNAME%NoCont_es.txt %T_FILENAME% false 0
pause