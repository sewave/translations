@echo off
set T_FILENAME="Bio Senshi Dan - Increaser Tono Tatakai (J) [T+ESP].nes"
set S_FILENAME="Bio Senshi Dan - Increaser Tono Tatakai (J) [!].nes"
set SCRIPTNAME="biosenshidan"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
