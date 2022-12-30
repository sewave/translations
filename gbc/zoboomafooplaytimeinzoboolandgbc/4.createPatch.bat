@echo off
set T_FILENAME="TR_Zoboomafoo - Playtime in Zobooland (USA).gbc"
set S_FILENAME="Zoboomafoo - Playtime in Zobooland (USA).gbc"
set SCRIPTNAME="zoboomafooplaytimeinzoboolandgbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
