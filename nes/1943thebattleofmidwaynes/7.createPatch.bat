@echo off
set T_FILENAME="TR_1943 - The Battle of Midway (U) [!].nes"
set S_FILENAME="1943 - The Battle of Midway (U) [!].nes"
set SCRIPTNAME="1943thebattleofmidwaynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
