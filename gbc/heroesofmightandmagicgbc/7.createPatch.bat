@echo off
set T_FILENAME="TR_Heroes of Might and Magic (U) (M3) [C][!].gbc"
set S_FILENAME="Heroes of Might and Magic (U) (M3) [C][!].gbc"
set SCRIPTNAME="heroesofmightandmagicgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
