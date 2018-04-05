set T_FILENAME="Hook (Prototype) [T+ESP].sms"
set S_FILENAME="Hook (Prototype) [!].sms"
set SCRIPTNAME="hook"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause