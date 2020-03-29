@echo off
set T_FILENAME="TR_Block Out (W) (REV01) [!].bin"
set S_FILENAME="Block Out (W) (REV01) [!].bin"
set SCRIPTNAME="blockoutsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
