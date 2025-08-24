@echo off
set T_FILENAME="TR_Sky Jaguar - Konami (1984) [RC-721] [GoodMSX] [2099].rom"
set S_FILENAME="Sky Jaguar - Konami (1984) [RC-721] [GoodMSX] [2099].rom"
set SCRIPTNAME="skyjaguarkonamirom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
