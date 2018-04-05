set T_FILENAME="X-Men 2 - Clone Wars (UE) [T+ESP].bin"
set S_FILENAME="X-Men 2 - Clone Wars (UE) [!].bin"
set SCRIPTNAME="xmen2clone"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause