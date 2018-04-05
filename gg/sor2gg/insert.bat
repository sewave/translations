set T_FILENAME="Streets of Rage II (U) [T+ESP].gg"
set S_FILENAME="Streets of Rage II (U) [!].gg"
set SCRIPTNAME="sor2gg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause