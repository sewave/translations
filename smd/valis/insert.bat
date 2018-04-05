set T_FILENAME="Valis (U) [!] [T+ESP].bin"
set S_FILENAME="Valis (U) [!].bin"
set SCRIPTNAME="valis"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause