@echo off
set T_FILENAME="TR_F1 Race (Japan).nes"
set S_FILENAME="F1 Race (Japan).nes"
set SCRIPTNAME="f1racenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
