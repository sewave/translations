@echo off
set T_FILENAME="TR_Splatterhouse - Wanpaku Graffiti (Japan) [T+ENG].nes"
set S_FILENAME="Splatterhouse - Wanpaku Graffiti (Japan).nes"
set SCRIPTNAME="splatterhousewanpakugraffitines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
