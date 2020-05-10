@echo off
set T_FILENAME="TR_Maniac Mansion (S) [!].nes"
set S_FILENAME="Maniac Mansion (S) [!].nes"
set SCRIPTNAME="maniacmansionnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
