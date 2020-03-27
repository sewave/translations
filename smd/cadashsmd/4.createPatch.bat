@echo off
set T_FILENAME="TR_Cadash (JU) [c][!].bin"
set S_FILENAME="Cadash (JU) [c][!].bin"
set SCRIPTNAME="cadashsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
