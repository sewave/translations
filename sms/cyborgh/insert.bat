set T_FILENAME="Cyborg Hunter (UE) [T+ESP].sms"
set S_FILENAME="Cyborg Hunter (UE) [!].sms"
set SCRIPTNAME="cyborgh"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause