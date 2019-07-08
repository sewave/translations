@echo off
set T_FILENAME="TR_Arcade Classics (U) [!].gg"
set S_FILENAME="Arcade Classics (U) [!].gg"
set SCRIPTNAME="arcadeclassicsgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
