@echo off
set T_FILENAME="TR_Moero!! Juudou Warriors (Japan) [T+ENG].nes"
set S_FILENAME="Moero!! Juudou Warriors (Japan).nes"
set SCRIPTNAME="moerojuudouwarriorsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
