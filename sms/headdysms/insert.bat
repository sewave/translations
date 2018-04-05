set T_FILENAME="Dynamite Headdy (B) [T+ESP].sms"
set S_FILENAME="Dynamite Headdy (B) [!].sms"
set SCRIPTNAME="headdysms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause