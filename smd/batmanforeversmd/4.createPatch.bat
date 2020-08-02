@echo off
set T_FILENAME="TR_Batman Forever (W) [!].gen"
set S_FILENAME="Batman Forever (W) [!].gen"
set SCRIPTNAME="batmanforeversmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
