set T_FILENAME="Lucky Dime Caper, The - Starring Donald Duck (E) [T+ESP].sms"
set S_FILENAME="Lucky Dime Caper, The - Starring Donald Duck (E) [!].sms"
set SCRIPTNAME="luckysms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME%
pause