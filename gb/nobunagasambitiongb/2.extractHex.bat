@echo off
set T_FILENAME="TR_Nobunaga's Ambition (USA).gb"
set SCRIPTNAME="nobunagasambitiongb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8FE8:A0,8DF0:18
pause
