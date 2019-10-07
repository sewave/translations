@echo off
set T_FILENAME="TR_Lemmings (U) [!].gg"
set S_FILENAME="Lemmings (U) [!].gg"
set SCRIPTNAME="lemmingsgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
