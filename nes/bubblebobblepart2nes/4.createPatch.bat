@echo off
set T_FILENAME="TR_Bubble Bobble Part 2 (USA).nes"
set S_FILENAME="Bubble Bobble Part 2 (USA).nes"
set SCRIPTNAME="bubblebobblepart2nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
