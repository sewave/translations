@echo off
set T_FILENAME="TR_Meikyuu Jiin Dababa (Japan).fds"
set S_FILENAME="Meikyuu Jiin Dababa (Japan).fds"
set SCRIPTNAME="meikyuujiindababafds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
