@echo off
set T_FILENAME="TR_Star Force (SG-1000) [!].sg"
set S_FILENAME="Star Force (SG-1000) [!].sg"
set SCRIPTNAME="starforcesg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
