set T_FILENAME="Mercs (W) [T+ESP].bin"
set S_FILENAME="Mercs (W) [!].bin"
set SCRIPTNAME="mercs"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause