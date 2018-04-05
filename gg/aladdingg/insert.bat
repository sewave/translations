set T_FILENAME="Aladdin (U) [T+ESP].gg"
set S_FILENAME="Aladdin (U) [!].gg"
set SCRIPTNAME="aladdingg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause