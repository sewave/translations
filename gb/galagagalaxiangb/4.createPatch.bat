@echo off
set T_FILENAME="TR_Arcade Classic No. 3 - Galaga & Galaxian (USA) (SGB Enhanced).gb"
set S_FILENAME="Arcade Classic No. 3 - Galaga & Galaxian (USA) (SGB Enhanced).gb"
set SCRIPTNAME="galagagalaxiangb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
