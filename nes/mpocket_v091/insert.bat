set T_FILENAME="Monster In My Pocket (U) [T+ESP].nes"
set S_FILENAME="Monster In My Pocket (U) [!].nes"
set SCRIPTNAME="mpocket"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl %SCRIPTNAME%Alt_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Title.tbl %SCRIPTNAME%Title_es.txt %T_FILENAME% false 0
pause