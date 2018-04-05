set T_FILENAME="Bio Senshi Dan - Increaser Tono Tatakai (J) [T+Eng_Abstract_Crouton].nes"
set SCRIPTNAME="biosenshidan"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.txt B209-B21C-00
pause