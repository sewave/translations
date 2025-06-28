@echo off
set T_FILENAME="TR_Alcazar - The Forgotten Fortress (Japan).rom"
set SCRIPTNAME="alcazartheforgottenfortressrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2D2C:8,2DA0:8,324F:100
pause
