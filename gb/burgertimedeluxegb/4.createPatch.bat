@echo off
set T_FILENAME="TR_BurgerTime Deluxe (World).gb"
set S_FILENAME="BurgerTime Deluxe (World).gb"
set SCRIPTNAME="burgertimedeluxegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
