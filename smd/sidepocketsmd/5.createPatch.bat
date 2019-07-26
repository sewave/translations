@echo off
set T_FILENAME="TR_Side Pocket (JU) [!].gen"
set S_FILENAME="Side Pocket (JU) [!].gen"
set SCRIPTNAME="sidepocketsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
