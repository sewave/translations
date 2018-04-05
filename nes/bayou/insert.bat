set T_FILENAME="Adventures of Bayou Billy, The (U) [T+ESP].nes"
set S_FILENAME="Adventures of Bayou Billy, The (U) [!].nes"
set SCRIPTNAME="bayou"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.ext %T_FILENAME% false 0
pause