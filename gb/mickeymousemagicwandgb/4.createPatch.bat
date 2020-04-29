@echo off
set T_FILENAME="TR_Mickey Mouse - Magic Wand (U) [S][!].gb"
set S_FILENAME="Mickey Mouse - Magic Wand (U) [S][!].gb"
set SCRIPTNAME="mickeymousemagicwandgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
