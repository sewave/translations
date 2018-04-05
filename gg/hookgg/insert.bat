set T_FILENAME="Hook (U) [T+ESP].gg"
set S_FILENAME="Hook (U) [!].gg"
set SCRIPTNAME="hookgg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause