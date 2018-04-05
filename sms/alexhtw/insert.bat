set T_FILENAME="Alex Kidd in High Tech World (UE) [T+ESP].sms"
set S_FILENAME="Alex Kidd in High Tech World (UE) [!].sms"
set SCRIPTNAME="alexhtw"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.txt %T_FILENAME% false 0
pause