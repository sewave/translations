set T_FILENAME="Cowboy Kid (U) [T+ESP].nes"
set S_FILENAME="Cowboy Kid (U) [!].nes"
set SCRIPTNAME="cowboy"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause