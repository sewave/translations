set T_FILENAME="Alex Kidd in Miracle World (UE) (V1.1) [T+ESP].sms"
set S_FILENAME="Alex Kidd in Miracle World (UE) (V1.1) [!].sms"
set SCRIPTNAME="alexmw"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause