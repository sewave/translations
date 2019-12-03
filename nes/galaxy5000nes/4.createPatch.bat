@echo off
set T_FILENAME="TR_Galaxy 5000 (U) [!].nes"
set S_FILENAME="Galaxy 5000 (U) [!].nes"
set SCRIPTNAME="galaxy5000nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
