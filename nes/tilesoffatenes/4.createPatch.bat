@echo off
set T_FILENAME="TR_Tiles of Fate (AVE) [!].nes"
set S_FILENAME="Tiles of Fate (AVE) [!].nes"
set SCRIPTNAME="tilesoffatenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
