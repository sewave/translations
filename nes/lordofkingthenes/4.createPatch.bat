@echo off
set T_FILENAME="TR_Lord of King, The (Japan) [T+ENG].nes"
set S_FILENAME="Lord of King, The (Japan).nes"
set SCRIPTNAME="lordofkingthenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
