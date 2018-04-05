set T_FILENAME="Aerial Assault (JU) (V1.1) [T+ESP].gg"
set S_FILENAME="Aerial Assault (JU) (V1.1) [!].gg"
set SCRIPTNAME="aerialassgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.txt %T_FILENAME% false 0
pause