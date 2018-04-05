set T_FILENAME="Bad Dudes (U) [T+ESP].nes"
set S_FILENAME="Bad Dudes (U) [!].nes"
set SCRIPTNAME="baddudes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt2.tbl %SCRIPTNAME%Alt2_es.txt %T_FILENAME% false 0
pause