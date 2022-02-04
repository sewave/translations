@echo off
set T_FILENAME="TR_Kouryuu Densetsu Villgust Gaiden (Japan) [T+ENG].nes"
set S_FILENAME="Kouryuu Densetsu Villgust Gaiden (Japan).nes"
set SCRIPTNAME="kouryuudensetsuvillgustgaidennes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
