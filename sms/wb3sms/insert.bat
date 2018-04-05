set T_FILENAME="Wonder Boy III - The Dragon's Trap (UE) [T+ESP].sms"
set S_FILENAME="Wonder Boy III - The Dragon's Trap (UE) [!].sms"
set SCRIPTNAME="wb3sms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%Hex.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Title.tbl %SCRIPTNAME%Title_es.ext %T_FILENAME%
pause