set T_FILENAME="Super Street Fighter II - The New Challengers (U) [T+ESP].bin"
set S_FILENAME="Super Street Fighter II - The New Challengers (U) [c][!].bin"
set SCRIPTNAME="supersf2smd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Menu.tbl %SCRIPTNAME%Menu_es.txt %T_FILENAME% false 0
pause