set T_FILENAME="Dynamite Headdy (U) [T+ESP].gg"
set S_FILENAME="Dynamite Headdy (U).gg"
set SCRIPTNAME="headdygg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -dh %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.txt %T_FILENAME% false 0
pause