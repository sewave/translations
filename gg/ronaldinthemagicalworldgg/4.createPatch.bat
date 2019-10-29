@echo off
set T_FILENAME="TR_Ronald in the Magical World (JU).gg"
set S_FILENAME="Ronald in the Magical World (JU).gg"
set SCRIPTNAME="ronaldinthemagicalworldgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
