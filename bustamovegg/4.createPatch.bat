@echo off
set T_FILENAME="TR_Bust-A-Move (U) [!].gg"
set S_FILENAME="Bust-A-Move (U) [!].gg"
set SCRIPTNAME="bustamovegg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
