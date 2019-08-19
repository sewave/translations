@echo off
set T_FILENAME="TR_Impossible Mission II (U) [!].nes"
set S_FILENAME="Impossible Mission II (U) [!].nes"
set SCRIPTNAME="impossiblemissioniines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
