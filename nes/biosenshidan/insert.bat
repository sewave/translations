set T_FILENAME="Bio Senshi Dan - Increaser Tono Tatakai (J) [T+ESP].nes"
set S_FILENAME="Bio Senshi Dan - Increaser Tono Tatakai (J) [T+Eng_Abstract_Crouton].nes"
set SCRIPTNAME="biosenshidan"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%Hex.txt %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl %SCRIPTNAME%_es.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Title.tbl %SCRIPTNAME%Title_es.ext %T_FILENAME%
pause