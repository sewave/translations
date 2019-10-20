@echo off
set T_FILENAME="TR_T2 - The Arcade Game (U) [!].gb"
set S_FILENAME="T2 - The Arcade Game (U) [!].gb"
set SCRIPTNAME="t2thearcadegamegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
