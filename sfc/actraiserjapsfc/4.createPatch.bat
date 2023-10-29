@echo off
set T_FILENAME="TR_Actraiser (Japan) [T+ENG].sfc"
set S_FILENAME="Actraiser (Japan).sfc"
set SCRIPTNAME="actraiserjapsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
