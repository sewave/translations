@echo off
set T_FILENAME="TR_P'radikus Conflict, The (Color Dreams) [!].nes"
set S_FILENAME="P'radikus Conflict, The (Color Dreams) [!].nes"
set SCRIPTNAME="pradikusconflictthenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
