set T_FILENAME="Rastan (UE) [T+ESP].sms"
set S_FILENAME="Rastan (UE) [!].sms"
set SCRIPTNAME="rastan"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause