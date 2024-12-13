@echo off
set T_FILENAME="TR_1943 - The Battle of Midway (USA).nes"
set SCRIPTNAME="1943thebattleofmidwaynes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F990:40,480:10,45E0:10,3DD0:100
pause
