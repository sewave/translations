@echo off
set T_FILENAME="TR_Formation Z (Japan) (Rev A).nes"
set S_FILENAME="Formation Z (Japan) (Rev A).nes"
set SCRIPTNAME="formationznes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
