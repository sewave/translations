@echo off
set T_FILENAME="TR_Cosmo Genesis (Japan) [T+ENG].nes"
set SCRIPTNAME="cosmogenesisnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex AE10:120,B000:10,CE10:120,D000:10
pause
