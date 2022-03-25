@echo off
set T_FILENAME="TR_Nangoku Shirei!! - Spy vs Spy (Japan) [T+ENG].nes"
set S_FILENAME="Nangoku Shirei!! - Spy vs Spy (Japan).nes"
set SCRIPTNAME="nangokushireispyvsspynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
