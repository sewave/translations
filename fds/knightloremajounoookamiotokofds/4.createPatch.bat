@echo off
set T_FILENAME="TR_Knight Lore - Majou no Ookami Otoko (Japan).fds"
set S_FILENAME="Knight Lore - Majou no Ookami Otoko (Japan).fds"
set SCRIPTNAME="knightloremajounoookamiotokofds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
