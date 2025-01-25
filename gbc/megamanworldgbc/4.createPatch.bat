@echo off
set T_FILENAME="TR_Mega Man World.gb"
set S_FILENAME="Mega Man - Dr. Wily's Revenge (USA).gb"
set SCRIPTNAME="megamanworldgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
