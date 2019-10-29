@echo off
set T_FILENAME="TR_Dragon's Revenge (UE) [!].bin"
set S_FILENAME="Dragon's Revenge (UE) [!].bin"
set SCRIPTNAME="dragonsrevengesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
