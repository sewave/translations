@echo off
set T_FILENAME="TR_Alien Soldier (Japan).md"
set S_FILENAME="Alien Soldier (Japan).md"
set SCRIPTNAME="aliensoldiersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
