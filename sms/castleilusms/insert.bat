set T_FILENAME="Castle of Illusion Starring Mickey Mouse (U) (V1.1) [T+ESP].sms"
set S_FILENAME="Castle of Illusion Starring Mickey Mouse (U) (V1.1) [!].sms"
set SCRIPTNAME="castleilusms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause