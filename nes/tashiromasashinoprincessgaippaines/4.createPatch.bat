@echo off
set T_FILENAME="TR_Tashiro Masashi no Princess ga Ippai (Japan) [T+ENG].nes"
set S_FILENAME="Tashiro Masashi no Princess ga Ippai (Japan).nes"
set SCRIPTNAME="tashiromasashinoprincessgaippaines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
