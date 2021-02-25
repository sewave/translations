@echo off
set T_FILENAME="TR_Ki no Bouken - The Quest of Ki (Japan) [T+ENG].nes"
set S_FILENAME="Ki no Bouken - The Quest of Ki (Japan).nes"
set SCRIPTNAME="kinoboukenthequestofkines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
