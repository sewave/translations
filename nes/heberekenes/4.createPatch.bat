@echo off
set T_FILENAME="TR_Hebereke (Japan) [T+ENG].nes"
set S_FILENAME="Hebereke (Japan).nes"
set SCRIPTNAME="heberekenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
