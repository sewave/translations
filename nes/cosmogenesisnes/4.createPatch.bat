@echo off
set T_FILENAME="TR_Cosmo Genesis (Japan) [T+ENG].nes"
set S_FILENAME="Cosmo Genesis (Japan).nes"
set SCRIPTNAME="cosmogenesisnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
