@echo off
set T_FILENAME="TR_Dragon Dance (USA) (SGB Enhanced).gbc"
set S_FILENAME="Dragon Dance (USA) (SGB Enhanced).gbc"
set SCRIPTNAME="dragondancegbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
