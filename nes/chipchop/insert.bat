set T_FILENAME="Chip 'n Dale Rescue Rangers (U) [T+ESP].nes"
set S_FILENAME="Chip 'n Dale Rescue Rangers (U) [!].nes"
set SCRIPTNAME="chipdale"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause