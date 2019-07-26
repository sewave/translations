@echo off
set T_FILENAME="TR_Deadly Moves (U) [!].bin"
set S_FILENAME="Deadly Moves (U) [!].bin"
set SCRIPTNAME="deadlymovessmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
