@echo off
set T_FILENAME="TR_Advanced Dungeons & Dragons - Dragons of Flame (Japan) [T+ENG].nes"
set S_FILENAME="Advanced Dungeons & Dragons - Dragons of Flame (Japan).nes"
set SCRIPTNAME="adandddragonsofflamenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
