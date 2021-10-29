@echo off
set T_FILENAME="TR_Mortal Kombat 4 (USA, Europe) (SGB Enhanced).gbc"
set S_FILENAME="Mortal Kombat 4 (USA, Europe) (SGB Enhanced).gbc"
set SCRIPTNAME="mortalkombat4gbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
