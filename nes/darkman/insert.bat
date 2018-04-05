set T_FILENAME="Darkman (U) [T+ESP].nes"
set S_FILENAME="Darkman (U) [!].nes"
set SCRIPTNAME="darkman"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Story.tbl %SCRIPTNAME%Story_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Foto.tbl %SCRIPTNAME%Foto_es.txt %T_FILENAME% false 0
pause