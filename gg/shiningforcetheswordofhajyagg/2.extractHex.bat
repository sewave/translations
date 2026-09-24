@echo off
set T_FILENAME="TR_Shining Force - The Sword of Hajya (USA).gg"
set SCRIPTNAME="shiningforcetheswordofhajyagg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 46FFE:400,4751E:A0,4771E:A0
pause
