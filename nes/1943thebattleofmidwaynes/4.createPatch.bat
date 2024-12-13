@echo off
set T_FILENAME="TR_1943 - The Battle of Midway (USA).nes"
set S_FILENAME="1943 - The Battle of Midway (USA).nes"
set SCRIPTNAME="1943thebattleofmidwaynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
