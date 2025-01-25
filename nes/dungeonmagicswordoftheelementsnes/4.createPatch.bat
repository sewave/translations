@echo off
set T_FILENAME="TR_Dungeon Magic - Sword of the Elements (USA).nes"
set S_FILENAME="Dungeon Magic - Sword of the Elements (USA).nes"
set SCRIPTNAME="dungeonmagicswordoftheelementsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
