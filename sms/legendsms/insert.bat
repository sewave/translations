set T_FILENAME="Legend of Illusion Starring Mickey Mouse (U) [T+ESP].sms"
set S_FILENAME="Legend of Illusion Starring Mickey Mouse (U) [!].sms"
set SCRIPTNAME="legendsms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause