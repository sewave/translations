@echo off
set T_FILENAME="TR_Choujikuu Yousai - Macross (Japan).nes"
set S_FILENAME="Choujikuu Yousai - Macross (Japan).nes"
set SCRIPTNAME="choujikuuyousaimacrossnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
