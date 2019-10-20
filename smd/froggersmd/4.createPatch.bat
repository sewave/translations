@echo off
set T_FILENAME="TR_Frogger (U) [!].bin"
set S_FILENAME="Frogger (U) [!].bin"
set SCRIPTNAME="froggersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
