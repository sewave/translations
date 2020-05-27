@echo off
set T_FILENAME="TR_Dynamite Duke (W) [!].bin"
set S_FILENAME="Dynamite Duke (W) [!].bin"
set SCRIPTNAME="dynamitedukesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
