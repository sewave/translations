@echo off
set T_FILENAME="TR_3-D Battles of World Runner, The (U) [!].nes"
set S_FILENAME="3-D Battles of World Runner, The (U) [!].nes"
set SCRIPTNAME="3dbattlesofworldrunnerthenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
