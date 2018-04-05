set T_FILENAME="Bonanza Bros (E) [T+ESP].sms"
set S_FILENAME="Bonanza Bros (E) [!].sms"
set SCRIPTNAME="bonanza"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Menu.tbl %SCRIPTNAME%Menu_es.txt %T_FILENAME% false 0
pause