set T_FILENAME="Robocop 3 (U) [T+ESP].nes"
set S_FILENAME="Robocop 3 (U).nes"
set SCRIPTNAME="robocop3"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl %SCRIPTNAME%Alt2_es.txt %T_FILENAME% false 0
pause