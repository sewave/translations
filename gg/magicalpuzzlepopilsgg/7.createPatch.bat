@echo off
set T_FILENAME="TR_Magical Puzzle Popils (World) (En,Ja).gg"
set S_FILENAME="Magical Puzzle Popils (World) (En,Ja).gg"
set SCRIPTNAME="magicalpuzzlepopilsgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
