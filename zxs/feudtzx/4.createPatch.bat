@echo off
set T_FILENAME="TR_Feud.tzx"
set S_FILENAME="Feud.tzx"
set SCRIPTNAME="feudtzx"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
