set T_FILENAME="Alien 3 (U) [T+ESP].gg"
set S_FILENAME="Alien 3 (U) [!].gg"
set SCRIPTNAME="alien3gg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause