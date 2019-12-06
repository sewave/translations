@echo off
set T_FILENAME="TR_Hyper Lode Runner (JU) [!].gb"
set S_FILENAME="Hyper Lode Runner (JU) [!].gb"
set SCRIPTNAME="hyperloderunnergb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
