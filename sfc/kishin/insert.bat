set T_FILENAME="Kishin Douji Zenki - Batoru Raiden (J) [T+ESP].smc"
set S_FILENAME="Kishin Douji Zenki - Batoru Raiden (J) [T+ENG].smc"
set SCRIPTNAME="kishin"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause