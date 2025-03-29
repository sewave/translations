@echo off
set T_FILENAME="TR_Shanghai II (Japan) (Rev A).gg"
set S_FILENAME="Shanghai II (Japan) (Rev A).gg"
set SCRIPTNAME="shanghaiiigg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
