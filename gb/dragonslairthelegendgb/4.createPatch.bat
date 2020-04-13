@echo off
set T_FILENAME="TR_Dragon's Lair - The Legend (U) [!].gb"
set S_FILENAME="Dragon's Lair - The Legend (U) [!].gb"
set SCRIPTNAME="dragonslairthelegendgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
