set T_FILENAME="Alien Soldier (E) [T+ESP].gen"
set S_FILENAME="Alien Soldier (E) [!].gen"
set SCRIPTNAME="aliensoldier"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause