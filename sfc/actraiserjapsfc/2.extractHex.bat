@echo off
set T_FILENAME="TR_Actraiser (Japan) [T+ENG].sfc"
set SCRIPTNAME="actraiserjapsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E5230:40,E55B0:200,E5830:200,E5CE0:20
pause
