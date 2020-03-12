@echo off
set T_FILENAME="TR_Darwin 4081 (J) [!].bin"
set S_FILENAME="Darwin 4081 (J) [!].bin"
set SCRIPTNAME="darwin4081smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
