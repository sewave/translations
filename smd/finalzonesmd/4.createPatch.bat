@echo off
set T_FILENAME="TR_Final Zone (JU) [!].bin"
set S_FILENAME="Final Zone (JU) [!].bin"
set SCRIPTNAME="finalzonesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
