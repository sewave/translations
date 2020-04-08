@echo off
set T_FILENAME="TR_Phantom 2040 (U) [!].gg"
set S_FILENAME="Phantom 2040 (U) [!].gg"
set SCRIPTNAME="phantom2040gg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
