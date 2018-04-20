set T_FILENAME="TR_Dossun! Ganseki Battle (J) [T+Eng1.00_AGTP].smc"
set S_FILENAME="Dossun! Ganseki Battle (J) [T+Eng1.00_AGTP].smc"
set SCRIPTNAME="dossun"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.ext %T_FILENAME% false 0
pause