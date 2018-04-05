set T_FILENAME="Probotector (E) [T+ESP].bin"
set S_FILENAME="Probotector (E) [!].bin"
set SCRIPTNAME="probotectorsmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Menu.tbl %SCRIPTNAME%Menu_es.txt %T_FILENAME% false 0
pause