set T_FILENAME="Strider (UE) [T+ESP].bin"
set S_FILENAME="Strider (UE) [!].bin"
set SCRIPTNAME="stridersmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause