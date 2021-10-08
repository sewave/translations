@echo off
set T_FILENAME="TR_Taiyou no Yuusha - Fighbird (Japan) [T+ENG].nes"
set S_FILENAME="Taiyou no Yuusha - Fighbird (Japan).nes"
set SCRIPTNAME="taiyounoyuushafighbirdnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
