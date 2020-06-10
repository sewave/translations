@echo off
set T_FILENAME="TR_Magical Taruruuto-kun (Japan).gg"
set S_FILENAME="Magical Taruruuto-kun (Japan).gg"
set SCRIPTNAME="magicaltaruruutokungg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
