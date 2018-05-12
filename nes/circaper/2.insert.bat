set T_FILENAME="Circus Caper (U) [T+ESP].nes"
set S_FILENAME="Circus Caper (U) [!].nes"
set SCRIPTNAME="circaper"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.ext %T_FILENAME%
pause