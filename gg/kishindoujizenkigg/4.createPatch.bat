@echo off
set T_FILENAME="TR_Kishin Douji Zenki (Japan) [T+ENG].gg"
set S_FILENAME="Kishin Douji Zenki (Japan).gg"
set SCRIPTNAME="kishindoujizenkigg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
