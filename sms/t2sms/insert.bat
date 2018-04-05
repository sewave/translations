set T_FILENAME="Terminator 2 - Judgment Day (E) [T+ESP].sms"
set S_FILENAME="Terminator 2 - Judgment Day (E) [!].sms"
set SCRIPTNAME="t2sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause