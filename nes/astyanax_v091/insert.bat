set T_FILENAME="Astyanax (U) [T+ESP].nes"
set S_FILENAME="Astyanax (U) [!].nes"
set SCRIPTNAME="astyanax"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
java -jar Hextractor.jar -h %SCRIPTNAME%Menus.tbl %SCRIPTNAME%Menus_es.txt %T_FILENAME% false 0
pause