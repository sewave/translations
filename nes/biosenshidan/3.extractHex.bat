@echo off
set T_FILENAME="Bio Senshi Dan - Increaser Tono Tatakai (J) [T+ESP].nes"
set S_FILENAME="Bio Senshi Dan - Increaser Tono Tatakai (J) [T+Eng_Abstract_Crouton].nes"
set SCRIPTNAME="biosenshidan"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 22E10:80,3C670-3C870
pause
