@echo off
set T_FILENAME="TR_Super Mario Land 2 - 6 Golden Coins (USA, Europe) (Rev B).gb"
set S_FILENAME="Super Mario Land 2 - 6 Golden Coins (USA, Europe) (Rev B).gb"
set SCRIPTNAME="supermarioland26goldencoinsgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
