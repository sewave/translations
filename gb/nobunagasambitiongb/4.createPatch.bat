@echo off
set T_FILENAME="TR_Nobunaga's Ambition (USA).gb"
set S_FILENAME="Nobunaga's Ambition (USA).gb"
set SCRIPTNAME="nobunagasambitiongb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
