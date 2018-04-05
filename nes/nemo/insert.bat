set T_FILENAME="Little Nemo - The Dream Master (U) [T+ESP].nes"
set S_FILENAME="Little Nemo - The Dream Master (U).nes"
set SCRIPTNAME="nemo"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause