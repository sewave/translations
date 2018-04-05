set T_FILENAME="Stanley - The Search for Dr. Livingston (U) [T+ESP].nes"
set S_FILENAME="Stanley - The Search for Dr. Livingston (U) [!].nes"
set SCRIPTNAME="stanley"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0 
pause