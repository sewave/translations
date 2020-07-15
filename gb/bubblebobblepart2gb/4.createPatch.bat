@echo off
set T_FILENAME="TR_Bubble Bobble Part 2 (USA, Europe).gb"
set S_FILENAME="Bubble Bobble Part 2 (USA, Europe).gb"
set SCRIPTNAME="bubblebobblepart2gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
