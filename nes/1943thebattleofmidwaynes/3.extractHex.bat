@echo off
set T_FILENAME="TR_1943 - The Battle of Midway (U) [!].nes"
set SCRIPTNAME="1943thebattleofmidwaynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3DD0:200
pause
