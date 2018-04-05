set T_FILENAME="Dossun! Ganseki Battle (Japan) [T+ESP].sfc"
set S_FILENAME="Dossun! Ganseki Battle (Japan) [T+ENG].sfc"
set SCRIPTNAME="dossun"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause