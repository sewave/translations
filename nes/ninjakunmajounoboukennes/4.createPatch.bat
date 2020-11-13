@echo off
set T_FILENAME="TR_Ninja-kun - Majou no Bouken (Japan) (Rev 1).nes"
set S_FILENAME="Ninja-kun - Majou no Bouken (Japan) (Rev 1).nes"
set SCRIPTNAME="ninjakunmajounoboukennes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
