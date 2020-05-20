@echo off
set T_FILENAME="TR_NBA Jam (U) (V1.1) [!].gg"
set S_FILENAME="NBA Jam (U) (V1.1) [!].gg"
set SCRIPTNAME="nbajamgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
