@echo off
set T_FILENAME="TR_Worms (E) [!].bin"
set S_FILENAME="Worms (E) [!].bin"
set SCRIPTNAME="wormssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
