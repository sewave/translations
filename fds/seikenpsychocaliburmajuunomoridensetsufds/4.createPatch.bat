@echo off
set T_FILENAME="TR_Seiken Psychocalibur - Majuu no Mori Densetsu (Japan) [T+ENG].fds"
set S_FILENAME="Seiken Psychocalibur - Majuu no Mori Densetsu (Japan).fds"
set SCRIPTNAME="seikenpsychocaliburmajuunomoridensetsufds"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
